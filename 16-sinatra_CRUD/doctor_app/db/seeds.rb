Doctor.destroy_all


doctors = [
  {name: "Dr. Dre", specialization: "Making Hits", experience: 28, img_url: "https://i.insider.com/55c3c5eddd0895804e8b46ab?width=1100&format=jpeg&auto=webp"},
  {name: "Dr. Phil", specialization: "Tellin It Like it Is", experience: 35, img_url: "https://cdn1.thr.com/sites/default/files/2018/10/dr_phil.jpg"},
  {name: "Dr. Strange", specialization: "Time and Space", experience: 1000, img_url: "https://cdn.vox-cdn.com/thumbor/7K3uPy1iLOC4ovn73AY28U_-FGg=/0x0:1920x1079/1200x800/filters:focal(1085x298:1391x604)/cdn.vox-cdn.com/uploads/chorus_image/image/64773806/ply_dr_strange_graded.0.jpg"},
  {name: "Dr. Grey", specialization: "Doctor-ing", experience: 15, img_url: "https://uploads.poplyft.com/wp-content/uploads/2015/12/19171928/6358210837831832421606865759_mg.jpg"},
  {name: "Dr. Dolittle", specialization: "Talking to Animals", experience: 6, img_url: "https://cdn.onebauer.media/one/empire-tmdb/films/3050/images/g97xTt18p0WWnj6wxLGC0vBKFwQ.jpg?quality=50&width=1800&ratio=16-9&resizeStyle=aspectfill&format=jpg"},
  {name: "Dr. Seuss", specialization: "Tongue Twisters", experience: 50, img_url: "https://kubrick.htvapps.com/htv-prod/ibmig/cms/image/wcvb/19089804-19089804.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*"},
  {name: "Dr. Oz", specialization: "Healthy Habits", experience: 24, img_url: "https://cdn1.thr.com/sites/default/files/2019/10/drozshow_s08_s09_more_photography-gallery_16-h_2019.jpg"},
  {name: "Dr. Who", specialization: "Not getting Canceled", experience: 15, img_url: "https://ichef.bbci.co.uk/images/ic/1200x675/p01l5bkt.jpg"},
  {name: "Dr. Manhattan", specialization: "Being Blue", experience: 55, img_url: "https://static1.srcdn.com/wordpress/wp-content/uploads/2019/10/Dr-Manhattan-in-Watchmen-2008.jpg"},
  {name: "Dr. Doom", specialization: "Being Evil and Stuff", experience: 12, img_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/fantastic-four-doctor-doom-1565775461.jpg"},
]

puts "Creating Doctors..."

doctors.each do |doctor|
  Doctor.create(doctor)
end