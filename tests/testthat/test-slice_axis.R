test_that("slice_axis returns a data frame containing voxel and world coordinates", {
  file <- test_path("fixtures", "test.nii")
  result <- slice_axis(file, "x", c(7.5, 55))

  expect_s3_class(result, "data.frame")
  expect_equal(names(result), c("x", "y", "z", "i", "j", "k"))
})
