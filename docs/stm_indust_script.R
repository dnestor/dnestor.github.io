library(stm)

stm_indust_3 <- stm(indust_trim_dfm, 
                  K = 8, 
                  prevalence = ~ employer + union_clean + location, 
                  content = ~ union_clean, 
                  data = clust_meta_indust, 
                  init.type = "Spectral", 
                  max.em.its = 75, 
                  verbose = TRUE, 
                  interactions = FALSE,
                  gamma.prior = "L1")
beepr::beep(8)









