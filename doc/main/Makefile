TARGET := main
SRCS = $(TARGET).tex IEEEtran.cls $(TARGET)_text.tex
OBJS = $(TARGET).log $(TARGET).aux $(TARGET).pdf

$(TARGET).pdf: $(SRCS) ../muller_c/c_gate_text.tex ../entropy/entropy_text.tex
	pdflatex $(TARGET).tex

clean:
	rm -f $(OBJS)

.PHONY: clean
