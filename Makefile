.PHONY: all cv_ru cv_en clean cleanall

all: cv_ru cv_en

cv_en:
	$(MAKE) -C src/en all
	mv src/en/CV_EN.pdf Durnov_CV.pdf

cv_ru:
	$(MAKE) -C src/ru all
	mv src/ru/CV_RU.pdf ДурновАН_CV.pdf

clean:
	$(MAKE) -C src/en clean
	$(MAKE) -C src/ru clean

cleanall:
	$(MAKE) -C src/en cleanall
	$(MAKE) -C src/ru cleanall
