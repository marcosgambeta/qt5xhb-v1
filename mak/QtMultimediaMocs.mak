#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractAudioInputSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QAbstractAudioInputSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractAudioOutputSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtMultimedia/QAbstractAudioOutputSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioDecoderSlotsMoc.cpp                     : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioDecoderSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioDecoderControlSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioDecoderControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioInputSelectorControlSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioInputSelectorControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioOutputSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioOutputSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioOutputSelectorControlSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioOutputSelectorControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioProbeSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioProbeSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAudioRecorderSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QAudioRecorderSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraCaptureBufferFormatControlSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraCaptureBufferFormatControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraCaptureDestinationControlSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraCaptureDestinationControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraSlotsMoc.cpp                           : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraControlSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraExposureSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraExposureSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraExposureControlSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraExposureControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraFlashControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraFlashControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraFocusSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraFocusSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraFocusControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraFocusControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraImageCaptureSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraImageCaptureSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraImageCaptureControlSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraImageCaptureControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraLocksControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraLocksControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCameraZoomControlSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtMultimedia/QCameraZoomControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaAudioProbeControlSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaAudioProbeControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaAvailabilityControlSlotsMoc.cpp         : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaAvailabilityControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaGaplessPlaybackControlSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaGaplessPlaybackControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaNetworkAccessControlSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaNetworkAccessControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaObjectSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaObjectSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaPlayerSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaPlayerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaPlayerControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaPlayerControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaPlaylistSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaPlaylistSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaRecorderSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaRecorderSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaRecorderControlSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaRecorderControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaStreamsControlSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaStreamsControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMediaVideoProbeControlSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtMultimedia/QMediaVideoProbeControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMetaDataReaderControlSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtMultimedia/QMetaDataReaderControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMetaDataWriterControlSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtMultimedia/QMetaDataWriterControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioDataSlotsMoc.cpp                        : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioDataSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioDataControlSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioDataControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioTunerSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioTunerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRadioTunerControlSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtMultimedia/QRadioTunerControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QSoundEffectSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtMultimedia/QSoundEffectSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoDeviceSelectorControlSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtMultimedia/QVideoDeviceSelectorControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoProbeSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtMultimedia/QVideoProbeSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVideoWindowControlSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtMultimedia/QVideoWindowControlSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
