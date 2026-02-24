#activity 1 - exam score analysis (vector)
scores<-c(33,24,54,94,16,89,60,6,77,61,13,44,26)
grade_A<-sum(scores>=90 & scores<=100)
grade_B<-sum(scores>=80 & scores<=89)
grade_C<-sum(scores>=70 & scores<=79)
grade_D<-sum(scores>=60 & scores<=69)
grade_E<-sum(scores>=50 & scores<=59)
grade_F<-sum(scores<=49)
cat("Grade A:", grade_A, "\nGrade B:", grade_B, "\nGrade C:", grade_C,"\nGrade D:", grade_D, "\nGrade E:", grade_E, "\nGrade F:", grade_F, "\n")
pass_status <- scores > 49
print(pass_status)

#activity 2 - student records (list)
student_names <- c("Robert", "Hemsworth", "Scarlett","Evans", "Pratt","Larson", "Holland", "Paul", "Simu", "Renner")
exam_scores <- c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
student_list <- list(Names = student_names, Scores = exam_scores)
highest_score <- max(student_list$Scores)
lowest_score <- min(student_list$Scores)
avg_score <- mean(student_list$Scores)
top_students <- student_list$Names[student_list$Scores == highest_score]
bottom_students <- student_list$Names[student_list$Scores == lowest_score]
cat("Highest Score:", highest_score, "\n")
cat("Lowest Score:", lowest_score, "\n")
cat("Average Score:", avg_score, "\n")
cat("Student(s) with highest score:", paste(top_students, collapse=", "), "\n")
cat("Student(s) with lowest score:", paste(bottom_students, collapse=", "), "\n")

#activity 3 - appending records & multi-subject analysis
student_list$Chemistry <- c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
student_list$Physics <- c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
fail_chem <- sum(student_list$Chemistry <= 49)
total_scores <- student_list$Chemistry + student_list$Physics
best_score_val <- max(total_scores)
best_student <- student_list$Names[total_scores == best_score_val]
cat("Students failing Chemistry:", fail_chem, "\n")
cat("Students failing Physics:", fail_phys, "\n")
cat("Student with highest combined score:", best_student, "(", best_score_val, ")\n")

