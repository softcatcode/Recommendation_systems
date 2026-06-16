LATEX_FLAGS = -interaction=nonstopmode -halt-on-error -file-line-error
ROOT = Recommendation_systems
MAIN = report

TEX_FILES = \
	$(ROOT)/$(MAIN).tex \
	$(ROOT)/packages.tex \
	$(ROOT)/references.bib \
	$(ROOT)/chapters/01-title.tex \
	$(ROOT)/chapters/02-contents.tex \
	$(ROOT)/chapters/03-annotation.tex \
	$(ROOT)/chapters/04-intro.tex \
	$(ROOT)/chapters/05-analysis.tex \
	$(ROOT)/chapters/06-construction.tex \
	$(ROOT)/chapters/analysis/1-subject-area.tex \
	$(ROOT)/chapters/analysis/2-collaboration.tex \
	$(ROOT)/chapters/analysis/3-content.tex \
	$(ROOT)/chapters/analysis/4-others-overview.tex \
	$(ROOT)/chapters/analysis/5-cmp.tex \
	$(ROOT)/chapters/analysis/6-filtering.tex \
	$(ROOT)/chapters/07-technological.tex \
	$(ROOT)/chapters/08-research.tex \
	$(ROOT)/chapters/09-conclusion.tex \
	$(ROOT)/chapters/10-sources.tex \
	$(ROOT)/chapters/11-vectorize.tex \
	$(ROOT)/chapters/13-slides.tex \
	$(ROOT)/chapters/12-app.tex \
	$(ROOT)/chapters/13-slides.tex \
	$(ROOT)/img/methods.png \
	$(ROOT)/img/uml.pdf \
	$(ROOT)/img/mvi.pdf \
	$(ROOT)/img/usecases.pdf \
	$(ROOT)/img/profile.pdf \
	$(ROOT)/img/metrics.pdf \
	$(ROOT)/img/assemble.pdf \
	$(ROOT)/img/filter.pdf \
	$(ROOT)/img/predict.pdf \
	$(ROOT)/img/learn.pdf \
	$(ROOT)/img/er.pdf \
	$(ROOT)/img/idef0.pdf \
	$(ROOT)/img/idef1.pdf \
	$(ROOT)/img/idef2.pdf \
	$(ROOT)/img/idef3.pdf \
	$(ROOT)/img/dataset.png \
	$(ROOT)/img/title_img.png \
	$(ROOT)/img/authorize.png \
	$(ROOT)/img/profile.png \
	$(ROOT)/img/recommend.png \
	$(ROOT)/img/scores.png \
	$(ROOT)/img/search.png \
	$(ROOT)/img/favourites.png \
	$(ROOT)/img/details.png \
	$(ROOT)/img/reg_metric.png \
	$(ROOT)/img/knn_metric_1.png \
	$(ROOT)/img/knn_metric_2.png

$(MAIN).pdf: $(TEX_FILES)
	cd $(ROOT) && \
	pdflatex $(LATEX_FLAGS) $(MAIN).tex && \
	biber $(MAIN) && \
	pdflatex $(LATEX_FLAGS) $(MAIN).tex && \
	pdflatex $(LATEX_FLAGS) $(MAIN).tex
	mv $(ROOT)/$(MAIN).pdf .

all: $(MAIN).pdf

.PHONY: all clean

clean:
	rm -f $(ROOT)/*.aux $(ROOT)/*.bcf $(ROOT)/*.out $(ROOT)/*.xml $(ROOT)/*.blg $(ROOT)/*.toc $(ROOT)/*.log $(ROOT)/*.bbl
	rm -f $(MAIN).pdf
