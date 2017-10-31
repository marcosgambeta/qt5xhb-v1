$header

/*
enum QNetworkConfiguration::BearerType
*/
#define QNetworkConfiguration_BearerUnknown                          0
#define QNetworkConfiguration_BearerEthernet                         1
#define QNetworkConfiguration_BearerWLAN                             2
#define QNetworkConfiguration_Bearer2G                               3
#define QNetworkConfiguration_BearerCDMA2000                         4
#define QNetworkConfiguration_BearerWCDMA                            5
#define QNetworkConfiguration_BearerHSPA                             6
#define QNetworkConfiguration_BearerBluetooth                        7
#define QNetworkConfiguration_BearerWiMAX                            8

/*
enum QNetworkConfiguration::Purpose
*/
#define QNetworkConfiguration_UnknownPurpose                         0
#define QNetworkConfiguration_PublicPurpose                          1
#define QNetworkConfiguration_PrivatePurpose                         2
#define QNetworkConfiguration_ServiceSpecificPurpose                 3

/*
enum QNetworkConfiguration::StateFlag
flags QNetworkConfiguration::StateFlags
*/
#define QNetworkConfiguration_Undefined                              0x0000001
#define QNetworkConfiguration_Defined                                0x0000002
#define QNetworkConfiguration_Discovered                             0x0000006
#define QNetworkConfiguration_Active                                 0x000000e

/*
enum QNetworkConfiguration::Type
*/
#define QNetworkConfiguration_InternetAccessPoint                    0
#define QNetworkConfiguration_ServiceNetwork                         1
#define QNetworkConfiguration_UserChoice                             2
#define QNetworkConfiguration_Invalid                                3
