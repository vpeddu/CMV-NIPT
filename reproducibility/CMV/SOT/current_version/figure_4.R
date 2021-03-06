library(ggplot2)
library(Rsamtools)
library(svMisc)
library(seqinr)
library(reshape2)
library(cowplot)

setwd('/Users/gerbix/Documents/vikas/NIPT/nipt_git_repo/reproducibility/CMV/SOT/fragment_patch')


load(file = '/Users/gerbix/Documents/vikas/NIPT/nipt_git_repo/reproducibility/CMV/SOT/fragment_patch/figure_4A.rdata')
load(file='/Users/gerbix/Documents/vikas/NIPT/nipt_git_repo/reproducibility/CMV/SOT/fragment_patch/figure_4B.rdata')
load(file='/Users/gerbix/Documents/vikas/NIPT/nipt_git_repo/reproducibility/CMV/SOT/fragment_patch/figure_4C.rdata')

plot_grid(plot,cmv_plot_4b, cumulative_freq_with_human ,labels = c('A','B','C'), ncol = 3, align = 'hv')
ggsave(plot = last_plot(), height = 3, width = 8, filename = 'figure_4.pdf')
  