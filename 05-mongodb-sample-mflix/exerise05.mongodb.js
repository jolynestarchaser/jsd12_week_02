use("sample_mflix");

//How many movies does mentioned American in its plot?
db.movies.find({ plot: { $regex: /american/i}}).count()

//How many movies does end plot (sentence) with the word street.
db.movies.find({ plot: { $regex: /american/i}}).count()