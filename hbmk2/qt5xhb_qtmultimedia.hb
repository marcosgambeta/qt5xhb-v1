//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run(cMocExe + " " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""
   LOCAL cMocExe := getenv("QT_MOC_EXE")

   IF empty(cMocExe)
      cMocExe := "moc"
   ENDIF

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source/QtMultimedia/QAbstractAudioInputSlots.hpp")
      RUNMOC("source/QtMultimedia/QAbstractAudioOutputSlots.hpp")
      RUNMOC("source/QtMultimedia/QAudioDecoderControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QAudioDecoderSlots.hpp")
      RUNMOC("source/QtMultimedia/QAudioInputSelectorControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QAudioOutputSelectorControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QAudioOutputSlots.hpp")
      RUNMOC("source/QtMultimedia/QAudioProbeSlots.hpp")
      RUNMOC("source/QtMultimedia/QAudioRecorderSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraCaptureBufferFormatControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraCaptureDestinationControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraExposureControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraExposureSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraFlashControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraFocusControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraFocusSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraImageCaptureControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraImageCaptureSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraLocksControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraSlots.hpp")
      RUNMOC("source/QtMultimedia/QCameraZoomControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaAudioProbeControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaAvailabilityControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaGaplessPlaybackControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaNetworkAccessControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaObjectSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaPlayerControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaPlayerSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaPlaylistSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaRecorderControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaRecorderSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaStreamsControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMediaVideoProbeControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMetaDataReaderControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QMetaDataWriterControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QRadioDataControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QRadioDataSlots.hpp")
      RUNMOC("source/QtMultimedia/QRadioTunerControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QRadioTunerSlots.hpp")
      RUNMOC("source/QtMultimedia/QSoundEffectSlots.hpp")
      RUNMOC("source/QtMultimedia/QVideoDeviceSelectorControlSlots.hpp")
      RUNMOC("source/QtMultimedia/QVideoProbeSlots.hpp")
      RUNMOC("source/QtMultimedia/QVideoWindowControlSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source/QtMultimedia/QAbstractAudioInputSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAbstractAudioOutputSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAudioDecoderControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAudioDecoderSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAudioInputSelectorControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAudioOutputSelectorControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAudioOutputSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAudioProbeSlotsMoc.cpp")
      ferase("source/QtMultimedia/QAudioRecorderSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraCaptureBufferFormatControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraCaptureDestinationControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraExposureControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraExposureSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraFlashControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraFocusControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraFocusSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraImageCaptureControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraImageCaptureSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraLocksControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraSlotsMoc.cpp")
      ferase("source/QtMultimedia/QCameraZoomControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaAudioProbeControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaAvailabilityControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaGaplessPlaybackControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaNetworkAccessControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaObjectSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaPlayerControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaPlayerSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaPlaylistSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaRecorderControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaRecorderSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaStreamsControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMediaVideoProbeControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMetaDataReaderControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QMetaDataWriterControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QRadioDataControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QRadioDataSlotsMoc.cpp")
      ferase("source/QtMultimedia/QRadioTunerControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QRadioTunerSlotsMoc.cpp")
      ferase("source/QtMultimedia/QSoundEffectSlotsMoc.cpp")
      ferase("source/QtMultimedia/QVideoDeviceSelectorControlSlotsMoc.cpp")
      ferase("source/QtMultimedia/QVideoProbeSlotsMoc.cpp")
      ferase("source/QtMultimedia/QVideoWindowControlSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
