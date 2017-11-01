/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QGEOROUTEREQUEST_CH
#define QGEOROUTEREQUEST_CH

/*
enum QGeoRouteRequest::TravelMode
flags QGeoRouteRequest::TravelModes
*/
#define QGeoRouteRequest_CarTravel                                   0x0001
#define QGeoRouteRequest_PedestrianTravel                            0x0002
#define QGeoRouteRequest_BicycleTravel                               0x0004
#define QGeoRouteRequest_PublicTransitTravel                         0x0008
#define QGeoRouteRequest_TruckTravel                                 0x0010

/*
enum QGeoRouteRequest::FeatureType
flags QGeoRouteRequest::FeatureTypes
*/
#define QGeoRouteRequest_NoFeature                                   0x00000000
#define QGeoRouteRequest_TollFeature                                 0x00000001
#define QGeoRouteRequest_HighwayFeature                              0x00000002
#define QGeoRouteRequest_PublicTransitFeature                        0x00000004
#define QGeoRouteRequest_FerryFeature                                0x00000008
#define QGeoRouteRequest_TunnelFeature                               0x00000010
#define QGeoRouteRequest_DirtRoadFeature                             0x00000020
#define QGeoRouteRequest_ParksFeature                                0x00000040
#define QGeoRouteRequest_MotorPoolLaneFeature                        0x00000080

/*
enum QGeoRouteRequest::FeatureWeight
flags QGeoRouteRequest::FeatureWeights
*/
#define QGeoRouteRequest_NeutralFeatureWeight                        0x00000000
#define QGeoRouteRequest_PreferFeatureWeight                         0x00000001
#define QGeoRouteRequest_RequireFeatureWeight                        0x00000002
#define QGeoRouteRequest_AvoidFeatureWeight                          0x00000004
#define QGeoRouteRequest_DisallowFeatureWeight                       0x00000008

/*
enum QGeoRouteRequest::RouteOptimization
flags QGeoRouteRequest::RouteOptimizations
*/
#define QGeoRouteRequest_ShortestRoute                               0x0001
#define QGeoRouteRequest_FastestRoute                                0x0002
#define QGeoRouteRequest_MostEconomicRoute                           0x0004
#define QGeoRouteRequest_MostScenicRoute                             0x0008

/*
enum QGeoRouteRequest::SegmentDetail
flags QGeoRouteRequest::SegmentDetails
*/
#define QGeoRouteRequest_NoSegmentData                               0x0000
#define QGeoRouteRequest_BasicSegmentData                            0x0001

/*
enum QGeoRouteRequest::ManeuverDetail
flags QGeoRouteRequest::ManeuverDetails
*/
#define QGeoRouteRequest_NoManeuvers                                 0x0000
#define QGeoRouteRequest_BasicManeuvers                              0x0001

#endif /* QGEOROUTEREQUEST_CH */
