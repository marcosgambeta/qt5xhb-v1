/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QDockWidget::DockWidgetFeature
flags QDockWidget::DockWidgetFeatures
*/
#define QDockWidget_DockWidgetClosable                               0x01
#define QDockWidget_DockWidgetMovable                                0x02
#define QDockWidget_DockWidgetFloatable                              0x04
#define QDockWidget_DockWidgetVerticalTitleBar                       0x08
#define QDockWidget_AllDockWidgetFeatures                            hb_bitor(hb_bitor(QDockWidget_DockWidgetClosable,QDockWidget_DockWidgetMovable),QDockWidget_DockWidgetFloatable)
#define QDockWidget_NoDockWidgetFeatures                             0x00
