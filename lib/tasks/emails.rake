require_relative "../dnsimple"

namespace :emails do
  task :update do
    forwards = EMAILS.inject([]) do |forwards, (from, tos)|
      forwards += tos.map { |to| [from, to] }
    end
    existing_forwards = DNSimple.client.get("email_forwards").map do |hash|
      [hash["email_forward"]["from"].chomp("@synergy-croatia.com"), hash["email_forward"]["to"]]
    end
    new_forwards = forwards - existing_forwards

    new_forwards.each do |from, to|
      DNSimple.client.post("email_forwards", email_forward: {from: from, to: to})
    end

    puts "No new forwards" if new_forwards.empty?
  end
end

EMAILS = {
  "alumni"           => ["synergy@synergy-croatia.com"],
  "dubi"             => ["dubravka@synergy-croatia.com"],
  "dubravka"         => ["dubravka21@gmail.com",
                         "highcouncil@synergy-croatia.com"],
  "evs"              => ["synergy@synergy-croatia.com"],
  "highcouncil"      => ["juraj@synergy-croatia.com",
                         "maja@synergy-croatia.com"],
  "juraj.boljat"     => ["juraj@synergy-croatia.com"],
  "juraj"            => ["juraj.boljat@gmail.com"],
  "maja.skrljak"     => ["maja@synergy-croatia.com"],
  "maja"             => ["maja_skrljak@yahoo.com"],
  "matija"           => ["matija.marohnic@gmail.com"],
  "mirjana"          => ["mkovacev5@gmail.com"],
  "prijava"          => ["synergy@synergy-croatia.com"],
  "synergy"          => ["highcouncil@synergy-croatia.com",
                         "mirjana@synergy-croatia.com"],
  "tihana.tamindzic" => ["tihana@synergy-croatia.com"],
  "tihana"           => ["tihanatosamja@gmail.com"]
}
