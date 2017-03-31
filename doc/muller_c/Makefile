TARGET := c_gate
SRCS = $(TARGET).tex IEEEtran.cls $(TARGET)_text.tex
OBJS = $(TARGET).log $(TARGET).aux $(TARGET).pdf

$(TARGET).pdf: $(SRCS)
	pdflatex $(TARGET).tex

clean:
	rm -f $(OBJS)

.PHONY: clean
