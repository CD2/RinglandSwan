task gen_pages: :environment do

  pages = [{
              name: 'Home',
              body: seed_html('home'),
              page_title: 'The Ringland Swan | Places to eat in Norfolk | Pub Restaurant',
              meta_description: 'Nestled in the lovely Wensum Valley, The Ringland Swan offers excellent food and wine in a relaxed country setting. Being one of the best places to eat in Norfolk',
              menu_name: 'Home',
              include_in_menu: true,
              order: 1,
              machine_name: :home,
              meta_page: true,
              banner_caption: 'Welcome to the Ringland Swan'
           },
           {
               name: 'About us',
               body: seed_html('about'),
               page_title: 'Dog friendly pubs Norfolk | The Ringland Swan',
               meta_description: 'The Ringland Swan has been refurbished to become one of the best pubs in Norfolk. It’s also a dog friendly pub, welcoming dogs into the bar area.',
               menu_name: 'About Us',
               include_in_menu: true,
               order: 2,
               featured: true,
               machine_name: :about,
               sidebar: 0
           },
           {
               name: 'Restaurant',
               body: seed_html('restaurant'),
               page_title: 'Restaurants in Norwich | The Ringland Swan',
               meta_description: 'Enjoy fantastic food in our restaurant, with seasonal menus. We advise on and install hosted VoIP systems to businesses in Norwich and Norfolk.',
               menu_name: 'Restaurant',
               include_in_menu: true,
               order: 3,
               machine_name: :restaurant,
               sidebar: 1
           },
           {
               name: 'Pub',
               body: seed_html('pub'),
               page_title: 'Pubs in Norfolk | The Ringland Swan',
               meta_description: 'The pub offers a relaxed place to eat and drink. With a bistro style menu, real ales, craft beers and selection of wines, we are one of the best pubs in Norfolk.',
               menu_name: 'Pub',
               include_in_menu: true,
               order: 4,
               machine_name: :pub,
               sidebar: 0
           },
           {
               name: 'Food and Drink',
               body: seed_html('food_and_drink'),
               page_title: 'Menus |eating out in Norfolk | The Ringland Swan',
               meta_description: 'The Ringland Swan offers a wide range of real ales and wines along with the best quality gastro style menu using the best local produce.',
               menu_name: 'Food & Drink',
               include_in_menu: true,
               order: 5,
               machine_name: :food_and_drink,
               sidebar: 0
           },
           {
                name: 'What\'s on / Events',
                body: seed_html('whats_on_events'),
                page_title: 'Norfolk pubs | What’s on | The Ringland Swan',
                meta_description: 'The Ringland Swan regularly hold special events throughout the year, being one of the Norfolk pubs that holds the annual raft race at Wensum Valley.',
                menu_name: 'What\'s on / Events',
                include_in_menu: true,
                order: 6,
                featured: true,
                machine_name: :whats_on_events,
                meta_page: true,
           },
           {
               name: 'Gallery',
               page_title: 'Pubs in Norfolk | Gallery | The Ringland Swan',
               meta_description: 'The most recent gallery images from The Ringland Swan.',
               include_in_menu: true,
               menu_name: 'Gallery',
               body: seed_html('gallery'),
               machine_name: :gallery,
               meta_page: true,
               order: 7
           },
           {
               name: 'Book a table',
               page_title: 'Norwich restaurant | Book a table | The Ringland Swan',
               meta_description: 'Book a table in our newly refurbished restaurant combining tradition features with modern styling. Book a table and you’ll be guaranteed excellent food and wine.',
               include_in_menu: false,
               body: seed_html('book_table'),
               machine_name: :book_table,
               meta_page: true
           },
           {
               name: 'Contact us',
               page_title: 'Places to eat in Norwich |Contact us, The Ringland Swan',
               meta_description: 'Contact us today at The Ringland Swan, one of the best places to eat in Norwich. Providing you with a satisfactory service and an excellent meal.',
               include_in_menu: true,
               menu_name: 'Contact Us',
               body: seed_html('contact_us'),
               machine_name: :contact_us,
               featured: true,
               meta_page: true
           }
  ]

  pages.each do |page|

    p = Page.create!(page)

    Dir.glob("#{Rails.root}/seed_data/images/#{p.machine_name}/*") do |photo|
      puts photo
      p.banner_images.create!(image: File.open(photo.to_s))
    end

  end

  Dir.glob("#{Rails.root}/seed_data/images/gallery/*") do |photo|
    puts photo
    GalleryImage.create!(image: File.open(photo.to_s))
  end

  (1..3).to_a.each do |event|
    Event.create!(name: "Event #{event}", body: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel enim ut purus tempus cursus in ut magna. Aenean at libero iaculis, rutrum odio vitae, laoreet quam. Suspendisse potenti.</p>')
  end


end

def seed_html html_file
  File.open(File.join(Rails.root, "seed_data/html/#{html_file}.html")).read
end

