task gen_testimonials: :environment do

  testimonials = [

      {
          name: "Country Delight",
          body: "As a child I used to visit the river at Ringland for play time. In this beautiful valley lies the pub also The Swan. A hidden gem just on the outskirts of norwich. Scenic views. Great service and friendly staff. Good traditional English-pub food.",
          author: "Matt H",

      },

      {
          name: "Just What I Fancied",
          body: "Lovely friendly face behind the bar, the pub has heaps of character. I like sitting outside it in the summer, the Ringland river is great for kids too.",
          author: "SmartDamo (on Tripadvisor)",

      },


      {
          name: "The Best Burgers Around",
          body: "Went last Thursday on a groupon deal for burger &chips meal for 4, friendly welcome seated in restaurant order taken quickly and in a short time the meals arrived I must say that all 4 of us all agreed it was one of the best burger meal that you could have.",
          author: "lookingforvalue1947 (on Tripadvisor",

      },


      {
          name: "Lovely Country Pub",
          body: "Beautiful setting with excellent food and service. We had Sunday Lunch in the Riverview restaurant which was superb. Everything cooked and presented perfectly I will definitely be returning soon.",
          author: "508michy (on Tripadvisor)",

      },


      {
          name: "Great Choice and Great Quality",
          body: "A very enjoyable evening. Excellent service. Everyone in our party commented on how good the food was. This is our third visit and it improves everytime we go.",
          author: "River N",

      },


      {
          name: "Brilliant Meal!",
          body: "We both had burger and chips and if 'Carlsberg' made burgers, so to speak, they real we're the best burgers we have ever had!!! (and the chips) The coffee was delicious as was the biscuit served with it and even the bill came with a little mint to top it of, perfectly. ",
          author: "Angela D",

      },


      {
          name: "Very Welcoming",
          body: "Popped in here for lunch the other day, hadn't been in for a while but was not disappointed. Friendly staff, warm fire and a good lunch menu in the public bar. Excellent locally sourced food and great home cooked chips - magic.",
          author: "Hugh M",

      },

      {
          name: "Excellent - Dog Friendly",
          body: "Have recently got a puppy so rang to check we could take him. We had to eat in the bar, which was lovely, lots of space, log burner. Staff and regulars friendly. And the bar menu food excellent and good value. Lots of parking and a good area for going for a walk along the Wensum valley.",
          author: "Takum111 (on Tripadvisor)",

      },

      {
          name: "First Class",
          body: "All of the meals were tasty and we'll presented. Portion size was great. The service was attentive and we never felt rushed as we stayed nearly three hours.",
          author: "Angela N",

      },

  ]

  testimonials.each do |t|
    Testimonial.create!(t)
  end

end