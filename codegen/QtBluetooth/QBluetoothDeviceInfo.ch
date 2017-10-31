$header

/*
enum QBluetoothDeviceInfo::MajorDeviceClass
*/
#define QBluetoothDeviceInfo_MiscellaneousDevice                     0
#define QBluetoothDeviceInfo_ComputerDevice                          1
#define QBluetoothDeviceInfo_PhoneDevice                             2
#define QBluetoothDeviceInfo_LANAccessDevice                         3
#define QBluetoothDeviceInfo_AudioVideoDevice                        4
#define QBluetoothDeviceInfo_PeripheralDevice                        5
#define QBluetoothDeviceInfo_ImagingDevice                           6
#define QBluetoothDeviceInfo_WearableDevice                          7
#define QBluetoothDeviceInfo_ToyDevice                               8
#define QBluetoothDeviceInfo_HealthDevice                            9
#define QBluetoothDeviceInfo_UncategorizedDevice                     31

/*
enum QBluetoothDeviceInfo::MinorMiscellaneousClass
*/
#define QBluetoothDeviceInfo_UncategorizedMiscellaneous              0

/*
enum QBluetoothDeviceInfo::MinorComputerClass
*/
#define QBluetoothDeviceInfo_UncategorizedComputer                   0
#define QBluetoothDeviceInfo_DesktopComputer                         1
#define QBluetoothDeviceInfo_ServerComputer                          2
#define QBluetoothDeviceInfo_LaptopComputer                          3
#define QBluetoothDeviceInfo_HandheldClamShellComputer               4
#define QBluetoothDeviceInfo_HandheldComputer                        5
#define QBluetoothDeviceInfo_WearableComputer                        6

/*
enum QBluetoothDeviceInfo::MinorPhoneClass
*/
#define QBluetoothDeviceInfo_UncategorizedPhone                      0
#define QBluetoothDeviceInfo_CellularPhone                           1
#define QBluetoothDeviceInfo_CordlessPhone                           2
#define QBluetoothDeviceInfo_SmartPhone                              3
#define QBluetoothDeviceInfo_WiredModemOrVoiceGatewayPhone           4
#define QBluetoothDeviceInfo_CommonIsdnAccessPhone                   5

/*
enum QBluetoothDeviceInfo::MinorNetworkClass
*/
#define QBluetoothDeviceInfo_NetworkFullService                      0x00
#define QBluetoothDeviceInfo_NetworkLoadFactorOne                    0x08
#define QBluetoothDeviceInfo_NetworkLoadFactorTwo                    0x10
#define QBluetoothDeviceInfo_NetworkLoadFactorThree                  0x18
#define QBluetoothDeviceInfo_NetworkLoadFactorFour                   0x20
#define QBluetoothDeviceInfo_NetworkLoadFactorFive                   0x28
#define QBluetoothDeviceInfo_NetworkLoadFactorSix                    0x30
#define QBluetoothDeviceInfo_NetworkNoService                        0x38

/*
enum QBluetoothDeviceInfo::MinorAudioVideoClass
*/
#define QBluetoothDeviceInfo_UncategorizedAudioVideoDevice           0
#define QBluetoothDeviceInfo_WearableHeadsetDevice                   1
#define QBluetoothDeviceInfo_HandsFreeDevice                         2
// reserved = 3
#define QBluetoothDeviceInfo_Microphone                              4
#define QBluetoothDeviceInfo_Loudspeaker                             5
#define QBluetoothDeviceInfo_Headphones                              6
#define QBluetoothDeviceInfo_PortableAudioDevice                     7
#define QBluetoothDeviceInfo_CarAudio                                8
#define QBluetoothDeviceInfo_SetTopBox                               9
#define QBluetoothDeviceInfo_HiFiAudioDevice                         10
#define QBluetoothDeviceInfo_Vcr                                     11
#define QBluetoothDeviceInfo_VideoCamera                             12
#define QBluetoothDeviceInfo_Camcorder                               13
#define QBluetoothDeviceInfo_VideoMonitor                            14
#define QBluetoothDeviceInfo_VideoDisplayAndLoudspeaker              15
#define QBluetoothDeviceInfo_VideoConferencing                       16
// reserved = 17
#define QBluetoothDeviceInfo_GamingDevice                            18

/*
enum QBluetoothDeviceInfo::MinorPeripheralClass
*/
#define QBluetoothDeviceInfo_UncategorizedPeripheral                 0
#define QBluetoothDeviceInfo_KeyboardPeripheral                      0x10
#define QBluetoothDeviceInfo_PointingDevicePeripheral                0x20
#define QBluetoothDeviceInfo_KeyboardWithPointingDevicePeripheral    0x30
#define QBluetoothDeviceInfo_JoystickPeripheral                      0x01
#define QBluetoothDeviceInfo_GamepadPeripheral                       0x02
#define QBluetoothDeviceInfo_RemoteControlPeripheral                 0x03
#define QBluetoothDeviceInfo_SensingDevicePeripheral                 0x04
#define QBluetoothDeviceInfo_DigitizerTabletPeripheral               0x05
#define QBluetoothDeviceInfo_CardReaderPeripheral                    0x06

/*
enum QBluetoothDeviceInfo::MinorImagingClass
*/
#define QBluetoothDeviceInfo_UncategorizedImagingDevice              0
#define QBluetoothDeviceInfo_ImageDisplay                            0x04
#define QBluetoothDeviceInfo_ImageCamera                             0x08
#define QBluetoothDeviceInfo_ImageScanner                            0x10
#define QBluetoothDeviceInfo_ImagePrinter                            0x20

/*
enum QBluetoothDeviceInfo::MinorWearableClass
*/
#define QBluetoothDeviceInfo_UncategorizedWearableDevice             0
#define QBluetoothDeviceInfo_WearableWristWatch                      1
#define QBluetoothDeviceInfo_WearablePager                           2
#define QBluetoothDeviceInfo_WearableJacket                          3
#define QBluetoothDeviceInfo_WearableHelmet                          4
#define QBluetoothDeviceInfo_WearableGlasses                         5

/*
enum QBluetoothDeviceInfo::MinorToyClass
*/
#define QBluetoothDeviceInfo_UncategorizedToy                        0
#define QBluetoothDeviceInfo_ToyRobot                                1
#define QBluetoothDeviceInfo_ToyVehicle                              2
#define QBluetoothDeviceInfo_ToyDoll                                 3
#define QBluetoothDeviceInfo_ToyController                           4
#define QBluetoothDeviceInfo_ToyGame                                 5

/*
enum QBluetoothDeviceInfo::MinorHealthClass
*/
#define QBluetoothDeviceInfo_UncategorizedHealthDevice               0
#define QBluetoothDeviceInfo_HealthBloodPressureMonitor              0x1
#define QBluetoothDeviceInfo_HealthThermometer                       0x2
#define QBluetoothDeviceInfo_HealthWeightScale                       0x3
#define QBluetoothDeviceInfo_HealthGlucoseMeter                      0x4
#define QBluetoothDeviceInfo_HealthPulseOximeter                     0x5
#define QBluetoothDeviceInfo_HealthDataDisplay                       0x7
#define QBluetoothDeviceInfo_HealthStepCounter                       0x8

/*
enum QBluetoothDeviceInfo::ServiceClass
flags QBluetoothDeviceInfo::ServiceClasses
*/
#define QBluetoothDeviceInfo_NoService                               0x0000
#define QBluetoothDeviceInfo_PositioningService                      0x0001
#define QBluetoothDeviceInfo_NetworkingService                       0x0002
#define QBluetoothDeviceInfo_RenderingService                        0x0004
#define QBluetoothDeviceInfo_CapturingService                        0x0008
#define QBluetoothDeviceInfo_ObjectTransferService                   0x0010
#define QBluetoothDeviceInfo_AudioService                            0x0020
#define QBluetoothDeviceInfo_TelephonyService                        0x0040
#define QBluetoothDeviceInfo_InformationService                      0x0080
#define QBluetoothDeviceInfo_AllServices                             0x07ff

/*
enum QBluetoothDeviceInfo::DataCompleteness
*/
#define QBluetoothDeviceInfo_DataComplete                            0
#define QBluetoothDeviceInfo_DataIncomplete                          1
#define QBluetoothDeviceInfo_DataUnavailable                         2
