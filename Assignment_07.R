data(mtcars)
head(mtcars)
str(mtcars)

summary(mtcars)
print(mtcars)

s3_obj <- list(name = "David", age = 30, GPA = 3.0)
class(s3_obj) <- "student_s3"

setClass("student_s4", slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

print(s3_obj)
summary(s3_obj)

print(s4_obj)
summary(s4_obj)