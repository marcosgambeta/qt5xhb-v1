//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      run("moc source\QtMultimedia\QAbstractAudioInputSlots.hpp -o source\QtMultimedia\QAbstractAudioInputSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAbstractAudioOutputSlots.hpp -o source\QtMultimedia\QAbstractAudioOutputSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioDecoderControlSlots.hpp -o source\QtMultimedia\QAudioDecoderControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioDecoderSlots.hpp -o source\QtMultimedia\QAudioDecoderSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioInputSelectorControlSlots.hpp -o source\QtMultimedia\QAudioInputSelectorControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioOutputSelectorControlSlots.hpp -o source\QtMultimedia\QAudioOutputSelectorControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioOutputSlots.hpp -o source\QtMultimedia\QAudioOutputSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioProbeSlots.hpp -o source\QtMultimedia\QAudioProbeSlotsMoc.cpp")
      run("moc source\QtMultimedia\QAudioRecorderSlots.hpp -o source\QtMultimedia\QAudioRecorderSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraCaptureBufferFormatControlSlots.hpp -o source\QtMultimedia\QCameraCaptureBufferFormatControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraCaptureDestinationControlSlots.hpp -o source\QtMultimedia\QCameraCaptureDestinationControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraControlSlots.hpp -o source\QtMultimedia\QCameraControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraExposureControlSlots.hpp -o source\QtMultimedia\QCameraExposureControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraExposureSlots.hpp -o source\QtMultimedia\QCameraExposureSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraFlashControlSlots.hpp -o source\QtMultimedia\QCameraFlashControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraFocusControlSlots.hpp -o source\QtMultimedia\QCameraFocusControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraFocusSlots.hpp -o source\QtMultimedia\QCameraFocusSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraImageCaptureControlSlots.hpp -o source\QtMultimedia\QCameraImageCaptureControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraImageCaptureSlots.hpp -o source\QtMultimedia\QCameraImageCaptureSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraLocksControlSlots.hpp -o source\QtMultimedia\QCameraLocksControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraSlots.hpp -o source\QtMultimedia\QCameraSlotsMoc.cpp")
      run("moc source\QtMultimedia\QCameraZoomControlSlots.hpp -o source\QtMultimedia\QCameraZoomControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaAudioProbeControlSlots.hpp -o source\QtMultimedia\QMediaAudioProbeControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaAvailabilityControlSlots.hpp -o source\QtMultimedia\QMediaAvailabilityControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaGaplessPlaybackControlSlots.hpp -o source\QtMultimedia\QMediaGaplessPlaybackControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaNetworkAccessControlSlots.hpp -o source\QtMultimedia\QMediaNetworkAccessControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaObjectSlots.hpp -o source\QtMultimedia\QMediaObjectSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaPlayerControlSlots.hpp -o source\QtMultimedia\QMediaPlayerControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaPlayerSlots.hpp -o source\QtMultimedia\QMediaPlayerSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaPlaylistSlots.hpp -o source\QtMultimedia\QMediaPlaylistSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaRecorderControlSlots.hpp -o source\QtMultimedia\QMediaRecorderControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaRecorderSlots.hpp -o source\QtMultimedia\QMediaRecorderSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaStreamsControlSlots.hpp -o source\QtMultimedia\QMediaStreamsControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMediaVideoProbeControlSlots.hpp -o source\QtMultimedia\QMediaVideoProbeControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMetaDataReaderControlSlots.hpp -o source\QtMultimedia\QMetaDataReaderControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QMetaDataWriterControlSlots.hpp -o source\QtMultimedia\QMetaDataWriterControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QRadioDataControlSlots.hpp -o source\QtMultimedia\QRadioDataControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QRadioDataSlots.hpp -o source\QtMultimedia\QRadioDataSlotsMoc.cpp")
      run("moc source\QtMultimedia\QRadioTunerControlSlots.hpp -o source\QtMultimedia\QRadioTunerControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QRadioTunerSlots.hpp -o source\QtMultimedia\QRadioTunerSlotsMoc.cpp")
      run("moc source\QtMultimedia\QSoundEffectSlots.hpp -o source\QtMultimedia\QSoundEffectSlotsMoc.cpp")
      run("moc source\QtMultimedia\QVideoDeviceSelectorControlSlots.hpp -o source\QtMultimedia\QVideoDeviceSelectorControlSlotsMoc.cpp")
      run("moc source\QtMultimedia\QVideoProbeSlots.hpp -o source\QtMultimedia\QVideoProbeSlotsMoc.cpp")
      run("moc source\QtMultimedia\QVideoWindowControlSlots.hpp -o source\QtMultimedia\QVideoWindowControlSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtMultimedia\QAbstractAudioInputSlotsMoc.cpp")
      run("del source\QtMultimedia\QAbstractAudioOutputSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioDecoderControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioDecoderSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioInputSelectorControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioOutputSelectorControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioOutputSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioProbeSlotsMoc.cpp")
      run("del source\QtMultimedia\QAudioRecorderSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraCaptureBufferFormatControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraCaptureDestinationControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraExposureControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraExposureSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraFlashControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraFocusControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraFocusSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraImageCaptureControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraImageCaptureSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraLocksControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraSlotsMoc.cpp")
      run("del source\QtMultimedia\QCameraZoomControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaAudioProbeControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaAvailabilityControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaGaplessPlaybackControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaNetworkAccessControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaObjectSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaPlayerControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaPlayerSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaPlaylistSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaRecorderControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaRecorderSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaStreamsControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMediaVideoProbeControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMetaDataReaderControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QMetaDataWriterControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QRadioDataControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QRadioDataSlotsMoc.cpp")
      run("del source\QtMultimedia\QRadioTunerControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QRadioTunerSlotsMoc.cpp")
      run("del source\QtMultimedia\QSoundEffectSlotsMoc.cpp")
      run("del source\QtMultimedia\QVideoDeviceSelectorControlSlotsMoc.cpp")
      run("del source\QtMultimedia\QVideoProbeSlotsMoc.cpp")
      run("del source\QtMultimedia\QVideoWindowControlSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
