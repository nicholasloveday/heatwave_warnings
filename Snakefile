rule all:
  input:
    "results/figures/fig2.pdf",
    "results/figures/fig_3_skill_score_lead_day.pdf",
    "results/figures/fig_3_skill_score_colourbar.pdf",
    "results/figures/fig_4_isoreg.pdf",
    "results/figures/fig_5_firm_recal.pdf",
    "results/figures/fig_6_synthetic_subplot.pdf",
    "results/figures/fig_7_synthetic_subplot.pdf"

rule fig_2:
  conda: "workflow/envs/notebooks.yml"
  log: "logs/fig_2.log"
  output: "results/figures/fig2.pdf"
  notebook: "src/fig_2_firm_line.ipynb"

rule fig_3_generate_netcdf:
  conda: "workflow/envs/notebooks.yml"
  log: "logs/fig_3_generate_netcdf.log"
  output: "results/skill_score.nc"
  notebook: "src/generate_fig3_results.ipynb"

rule fig_3:
  conda: "workflow/envs/notebooks.yml"
  log: "logs/fig_3.log"
  input: "results/skill_score.nc"
  output: 
    "results/figures/fig_3_skill_score_lead_day.pdf",
    "results/figures/fig_3_skill_score_colourbar.pdf",
  notebook: "src/fig_3_skill_score_plot.ipynb"

rule fig_4:
  conda: "workflow/envs/notebooks.yml"
  log: "logs/fig_4.log"
  output: "results/figures/fig_4_isoreg.pdf"
  notebook: "src/fig_4_isotonic_regression.ipynb"

rule fig_5:
  conda: "workflow/envs/notebooks.yml"
  log: "logs/fig_5.log"
  output: "results/figures/fig_5_firm_recal.pdf"
  notebook: "src/fig_5_post_processing.ipynb"

rule fig_6_7:
  conda: "workflow/envs/notebooks.yml"
  log: "logs/fig_6_7.log"
  output: 
    "results/figures/fig_6_synthetic_subplot.pdf",
    "results/figures/fig_7_synthetic_subplot.pdf"
  notebook: "src/figs_6_and_7_synthetic_experiment.ipynb"
