use("sample_mflix");

db.movies.find({})

//How many movies does mentioned American in its plot?
db.movies.find({ plot: { $regex: /american/i}}).count()

//How many movies does end plot (sentence) with the word street.
db.movies.countDocuments({ plot: /street$/i}).count() 

//What does the data of above examples look like?
db.movies.find({ plot: { $regex: "street.$", $options: "i" } })

//ยังไม่ค่อยเข้าใจเท่าไหร่เดี๋ยวรอเรียนในCodeacademyเพิ่มครับ