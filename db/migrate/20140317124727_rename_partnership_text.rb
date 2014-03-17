class RenamePartnershipText < ActiveRecord::Migration
  def up
    Text.find("pages/partners").update(action: "partnerships", toc: true,
                                       body_en: "",
                                       body_hr: "")
  end

  def down
    Text.find("pages/partnerships").update(action: "partners", toc: false,
                                           body_hr: "Syncro je predan stvaranju novih prilika, partnerstvo je oblik zajedničkog djelovanja. Organizacija ste i imate zanimljivi projekt ili biste željeli surađivati s nama javite nam se na <synergy@synergy-croatia.com>.",
                                           body_en: "Syncro is dedicated to networking and creating partnerships. If you have a project and wish to work with us, contact us at <synergy@synergy-croatia.com>.")
  end
end
