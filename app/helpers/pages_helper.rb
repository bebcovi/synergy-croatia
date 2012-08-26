# encoding: utf-8

module PagesHelper
  class Logo
    include ActiveAttr::MassAssignment
    attr_accessor :src, :title, :url
  end

  def logos
   filenames = Dir["#{Rails.root}/app/assets/images/partners/*"].map { |f| File.basename(f) }
   filenames.map do |filename|
     name = filename.sub(/\.\w{3,4}$/, "")
     Logo.new(
       src: "partners/#{filename}",
       title: LOGOS[name][:title],
       url: LOGOS[name][:url]
     )
   end
  end

  LOGOS = Hash.new({})
  LOGOS.update(
    "agencija-za-mobilnost-i-programe-eu" => {url: "http://www.mobilnost.hr/", title: "Agencija za mobilnost i programe EU"},
    "asha-centre" => {url: "http://www.ashacentre.org/", title: "The ASHA Centre"},
    "center-of-hellenic-sign-language" => {url: "http://www.keng.gr/en/the-keng-en.html", title: "Center of Hellenic Sign Language"},
    "egyesek" => {url: "http://www.egyesek.hu/", title: "Egyesek Youth Association"},
    "elmeny-akademia" => {url: "http://elmenyakademia.hu/en", title: "Élményakadémia Egyesület"},
    "global-soma" => {url: "http://www.globalsoma.net/", title: "GlobalSOMA"},
    "international-synergy-group" => {url: "http://www.facebook.com/groups/32264792518/", title: "International Synergy Group"},
    "lifelong-learning-programme" => {url: "http://www.mobilnost.hr/index.php?id=11", title: "Program za cjeloživotno učenje"},
    "olde-vechte-foundation" => {url: "http://www.oldevechte.nl/en/index.html", title: "Olde Vechte Foundation"},
    "outward-bound-croatia" => {url: "http://www.outwardbound.hr/", title: "Hrvatska škola Outward Bound"},
    "proni" => {url: "http://www.pronibrcko.ba/", title: "PRONI"},
    "solidarites-jeunesses" => {url: "http://www.solidaritesjeunesses.org/", title: "Solidarités Jeunesses"},
    "synergy-romania" => {url: "http://www.synergyforyou.ro/", title: "Synergy Romania"},
    "udruga-slijepih-zagreb" => {url: "http://www.udruga-slijepih-zagreb.hr/", title: "Udruga slijepih Zagreb"},
    "youth-in-action" => {url: "http://mobilnost.hr/nio.php?n=105", title: "Mladi na djelu"}
  )
end
