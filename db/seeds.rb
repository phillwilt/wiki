# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pages = Page.create([
  {
    title: 'Ennui',
    body: "American Apparel farm-to-table before they sold out seitan. Marfa seitan jean shorts, blog street art gentrify fixie ugh. Squid raw denim Intelligentsia 90's, umami lo-fi art party ethical crucifix dreamcatcher quinoa artisan you probably haven't heard of them church-key bitters. Truffaut bitters stumptown 8-bit farm-to-table Helvetica. Hella locavore plaid Williamsburg, drinking vinegar 90's pour-over. Hoodie fanny pack fingerstache mustache bespoke ennui. Salvia slow-carb keffiyeh distillery, cliche literally tofu pop-up hoodie deep v PBR cred dreamcatcher Etsy Brooklyn."
  },
  {
    title: 'Rainier',
    body: "Vice biodiesel Blue Bottle, tattooed lomo farm-to-table ennui cray cornhole polaroid. Asymmetrical gentrify keffiyeh mlkshk, wolf butcher single-origin coffee fap mixtape fixie. Mlkshk Pitchfork actually, Echo Park chambray authentic seitan pickled tofu hashtag wayfarers. Tumblr cornhole forage, hella fixie 8-bit put a bird on it. Plaid meggings yr flexitarian you probably haven't heard of them, gastropub actually post-ironic. Small batch sriracha chia meggings disrupt, seitan asymmetrical Odd Future biodiesel Schlitz yr. Salvia blog cliche cred."
  },
  {
    title: 'Laser Cats',
    body: "Fanny pack whatever pop-up, vegan messenger bag crucifix lomo ethical butcher. Cred meggings drinking vinegar kale chips. Tofu 8-bit slow-carb, Etsy brunch viral banjo 3 wolf moon YOLO DIY Tonx pork belly Truffaut. Echo Park paleo fashion axe, distillery Helvetica kogi skateboard Williamsburg. PBR Kickstarter Thundercats brunch mixtape, tote bag post-ironic Bushwick mlkshk selvage Wes Anderson pop-up. XOXO shabby chic you probably haven't heard of them aesthetic McSweeney's, umami DIY gentrify readymade. Gentrify next level before they sold out chia, ethical ennui PBR&B XOXO artisan paleo put a bird on it direct trade Cosby sweater."
  },
  {
    title: "You wouldn't understand",
    body: "Scenester banh mi butcher, Austin lomo kitsch ethical keffiyeh DIY Brooklyn squid mumblecore. Mustache organic Schlitz, farm-to-table raw denim American Apparel photo booth. Wolf cray Williamsburg, Kickstarter deep v occupy salvia gentrify Wes Anderson squid American Apparel post-ironic kitsch +1. Photo booth selfies kogi Pitchfork. Pork belly deep v farm-to-table, disrupt flannel selvage vegan forage asymmetrical Wes Anderson mixtape readymade crucifix direct trade 90's. Flannel American Apparel crucifix disrupt, sriracha PBR&B Austin chia bicycle rights quinoa paleo Blue Bottle semiotics Echo Park. Chillwave wayfarers Shoreditch Vice."
  }
])

users = User.create([
  {
    email: 'nathanfillian@pbr.com',
    encrypted_password: User.new.send(:password_digest, '12345678')
  },
  {
    email: 'tomrobbins@esteemedbookcompany.org',
    encrypted_password: User.new.send(:password_digest, 'sad12345')
  }

])
