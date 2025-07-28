test_that("slice_intensity returns a data fram with intensity values appended", {
  file <- test_path("fixtures", "test.nii") # Ensure it is a valid NIfTI file

  dummy_df_slice_axis <- data.frame(
    x = c(10, 11, 12),
    y = c(20, 21, 22),
    z = c(30, 31, 32),
    i = c(9, 10, 11),
    j = c(19, 20, 21),
    k = c(29, 30, 31)
  )

  result <- slice_intensity(file, df_slice_axis = dummy_df_slice_axis)

  expect_s3_class(result, "data.frame")
  expect_equal(names(result), c("intensity", "x", "y", "z", "i", "j", "k"))
  expect_true("intensity" %in% names(result))
  expect_equal(nrow(result), nrow(dummy_df_slice_axis)) # Check that rows match
})

