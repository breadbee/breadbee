OUTPUTS=outputs

.PHONY: $(OUTPUTS)

all: $(OUTPUTS)/breadbee.png

$(OUTPUTS):
	mkdir $@

$(OUTPUTS)/breadbee.png: $(OUTPUTS) breadbee.kicad_pcb
	pcbdraw breadbee.kicad_pcb $@
