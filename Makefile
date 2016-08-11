T            ?= $(CURDIR)
OUT_FIRMWARE := $(OUT)/firmware/ble_core

BLE_CORE_TOP     := $(T)/packages/intel/curie-ble

image: $(OUT_FIRMWARE)/image.bin

# copy prebuilt image
$(OUT_FIRMWARE)/image.bin: $(BLE_CORE_TOP)/prebuilt/image.bin
	@echo $(ANSI_RED)"[nCP]"$(ANSI_OFF) $@
	$(AT)mkdir -p $(OUT_FIRMWARE)
	$(AT)cp $< $@

clean:

.PHONY: FORCE

