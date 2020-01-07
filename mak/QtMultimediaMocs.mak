#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractAudioInputSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QAbstractAudioInputSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractAudioOutputSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtMultimedia/QAbstractAudioOutputSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioDecoderSlotsMoc.cpp                     : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioDecoderSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioDecoderControlSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioDecoderControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioInputSelectorControlSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioInputSelectorControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioOutputSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioOutputSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioOutputSelectorControlSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioOutputSelectorControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioProbeSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioProbeSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioRecorderSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioRecorderSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraCaptureBufferFormatControlSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraCaptureBufferFormatControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraCaptureDestinationControlSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraCaptureDestinationControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraSlotsMoc.cpp                           : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraControlSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraExposureSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraExposureSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraExposureControlSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraExposureControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraFlashControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraFlashControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraFocusSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraFocusSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraFocusControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraFocusControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraImageCaptureSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraImageCaptureSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraImageCaptureControlSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraImageCaptureControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraLocksControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraLocksControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraZoomControlSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraZoomControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaAudioProbeControlSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaAudioProbeControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaAvailabilityControlSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaAvailabilityControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaGaplessPlaybackControlSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaGaplessPlaybackControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaNetworkAccessControlSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaNetworkAccessControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaObjectSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaObjectSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaPlayerSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaPlayerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaPlayerControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaPlayerControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaPlaylistSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaPlaylistSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaRecorderSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaRecorderSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaRecorderControlSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaRecorderControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaStreamsControlSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaStreamsControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaVideoProbeControlSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaVideoProbeControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMetaDataReaderControlSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtMultimedia/QMetaDataReaderControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMetaDataWriterControlSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtMultimedia/QMetaDataWriterControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioDataSlotsMoc.cpp                        : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioDataSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioDataControlSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioDataControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioTunerSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioTunerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioTunerControlSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioTunerControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSoundEffectSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QSoundEffectSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoDeviceSelectorControlSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtMultimedia/QVideoDeviceSelectorControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoProbeSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtMultimedia/QVideoProbeSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWindowControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QVideoWindowControlSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
