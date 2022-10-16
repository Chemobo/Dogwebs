# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding dogs..."
dogs = Dog.create([
{
    name: "Affenpinscher",
    user_id: 1,
    image: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2020/05/21144745/Affenpinscher-running.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Akita",
    user_id: 2,
    image: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/06154034/Akita-standing-outdoors-in-the-summer.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Beagle",
    user_id: 3,
    image: "https://upload.wikimedia.org/wikipedia/commons/5/55/Beagle_600.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Belgian Malinois",
    user_id: 4,
    image: "https://cdn.britannica.com/85/232785-050-0EE871BE/Belgian-Malinois-dog.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Bullmastiff",
    user_id: 5,
    image: "https://www.akc.org/wp-content/uploads/2017/11/Bullmastiff-standing-in-a-field.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Catahoula Leopard Dog",
    user_id: 6,
    image: "https://upload.wikimedia.org/wikipedia/commons/6/61/1._Catahoula_Leopard_Dog%2C_Buck.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Doberman Pinscher",
    user_id: 7,
    image: "https://www.bubblypet.com/wp-content/uploads/2021/03/Best-Doberman-rescue-for-adoption.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "English Setter",
    user_id: 8,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqzMW-TT9kD2oIm_xtY6H6jSJLhgFGOz7VPg&usqp=CAU",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Field Spaniel",
    user_id: 9,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAX4doT1PF4VKrnvI0olaMs1koHs0wga2Ing&usqp=CAU",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "German Shepherd",
    user_id: 10,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQApnCBCSnDbBB6crwrVLJVs85bQgzmHOQPaw&usqp=CAU",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Havanese",
    user_id: 11,
    image: "https://www.yourpurebredpuppy.com/dogbreeds/photos-EFGH/havanesef1.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Italian Greyhound",
    user_id: 12,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbmpeH7aNZ_R-1FxZm6CFuE8pZf2HqrP059Q&usqp=CAU",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Japanese Spitz",
    user_id: 13,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLkx7faPa53Bch2_uGvFhQKfP1ssjTVI1qgw&usqp=CAU",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Lagotto Romagnolo",
    user_id: 14,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxkddO-89s7dxe-qvvXbw7hSraHMxtwx1Pkg&usqp=CAU",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."
    },
    {
    name: "Shih Tzu",
    user_id: 15,
    image: "https://img.cutenesscdn.com/640/cpie/images/a04/7p/un/name-shih-tzus-800x800.jpg",
    description: "Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing."

}])

users = User.create([
    { firstname: 'Jane', lastname: 'Sila', email: 'jsa@gmail.com', username: 'Kanpedo'}, 
    { firstname: 'Victor', lastname: 'Komen', email: 'jsk@gmail.com', username: 'Kapredo'}, 
    { firstname: 'Eddie', lastname: 'Butita', email:'ed@gmail.com', username: 'Kapedon'}, 
    { firstname: 'Julian', lastname: 'Shapiro', email: 'js@gmail.com', username: 'Kaapedo'}, 
    { firstname: 'Nick', lastname: 'Huber', email: 'nh@gmail.com', username: 'Kapedo'}])
puts "✅ Done seeding!"