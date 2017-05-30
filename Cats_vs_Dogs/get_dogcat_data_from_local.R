dir_structure <- paste0("/media/deependra/e4da4ac5-3b38-4b89-9402-397eb940e4d3/Python_Books and Projects/DL_small_francois/",
       rep(c("validation/", "train/"), times = 2), c("dogs", "dogs", "cats", "cats"))
head(dir_structure)

for (i in dir_structure){
  dir.create(i, recursive = TRUE, showWarnings = TRUE)  
}

setwd("/media/deependra/e4da4ac5-3b38-4b89-9402-397eb940e4d3/Python_Books and Projects/DL_small_francois")

train_cat_thou_sample <- sample(dir("/media/deependra/e4da4ac5-3b38-4b89-9402-397eb940e4d3/Python_Books and Projects/fastai/courses-master/deeplearning1/nbs/data/dogscats/train/cats", full.names = TRUE),
                                size = 1000, replace = FALSE)
train_dog_thou_sample <- sample(dir("/media/deependra/e4da4ac5-3b38-4b89-9402-397eb940e4d3/Python_Books and Projects/fastai/courses-master/deeplearning1/nbs/data/dogscats/train/dogs", full.names = TRUE),
                                size = 1000, replace = FALSE)
validation_cat_fourhun_sample <- sample(dir("/media/deependra/e4da4ac5-3b38-4b89-9402-397eb940e4d3/Python_Books and Projects/fastai/courses-master/deeplearning1/nbs/data/dogscats/valid/cats", full.names = TRUE),
                                size = 400, replace = FALSE)
validation_dog_fourhun_sample <- sample(dir("/media/deependra/e4da4ac5-3b38-4b89-9402-397eb940e4d3/Python_Books and Projects/fastai/courses-master/deeplearning1/nbs/data/dogscats/valid/dogs", full.names = TRUE),
                                size = 400, replace = FALSE)

file.copy(from = train_dog_thou_sample[1:10],
          to = "./train/dogs/",
          recursive = FALSE # must use it otherwise source directory str is recreated inside destination. Baaaadd!!! right?
          )

file.copy(from = train_cat_thou_sample[1:10],
          to = "./train/cats/",
          recursive = FALSE # must use it otherwise source directory str is recreated inside destination. Baaaadd!!! right?
          )

file.copy(from = validation_dog_fourhun_sample[1:10],
          to = "./validation/dogs/",
          recursive = FALSE # must use it otherwise source directory str is recreated inside destination. Baaaadd!!! right?
)          

file.copy(from = validation_cat_fourhun_sample[1:10],
          to = "./validation/cats/",
          recursive = FALSE # must use it otherwise source directory str is recreated inside destination. Baaaadd!!! right?
)

getwd()
dir()
