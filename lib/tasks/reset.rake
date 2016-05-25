task reset_all: :environment do

  Rake::Task["db:drop"].invoke
  Rake::Task["db:create"].invoke
  Rake::Task["production_init"].invoke

end

task production_init: :environment do

  Rake::Task["db:migrate"].invoke
  Rake::Task["gen_users"].invoke
  Rake::Task["gen_pages"].invoke
  Rake::Task["gen_testimonials"].invoke

end