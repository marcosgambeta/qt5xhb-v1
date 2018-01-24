%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQToolBar::actionTriggered ( QAction * action )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actionTriggered(QAction*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paction = hb_itemPutPtr( NULL, (QAction *) action );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void SlotsQToolBar::allowedAreasChanged ( Qt::ToolBarAreas allowedAreas )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "allowedAreasChanged(Qt::ToolBarAreas)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pallowedAreas = hb_itemPutNI( NULL, (int) allowedAreas );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pallowedAreas );
    hb_itemRelease( psender );
    hb_itemRelease( pallowedAreas );
  }
}

void SlotsQToolBar::iconSizeChanged ( const QSize & iconSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "iconSizeChanged(QSize)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM piconSize = hb_itemPutPtr( NULL, (QSize *) &iconSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, piconSize );
    hb_itemRelease( psender );
    hb_itemRelease( piconSize );
  }
}

void SlotsQToolBar::movableChanged ( bool movable )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "movableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmovable = hb_itemPutL( NULL, movable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmovable );
    hb_itemRelease( psender );
    hb_itemRelease( pmovable );
  }
}

void SlotsQToolBar::orientationChanged ( Qt::Orientation orientation )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "orientationChanged(Qt::Orientation)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, porientation );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}

void SlotsQToolBar::toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toolButtonStyleChanged(Qt::ToolButtonStyle)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptoolButtonStyle = hb_itemPutNI( NULL, (int) toolButtonStyle );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptoolButtonStyle );
    hb_itemRelease( psender );
    hb_itemRelease( ptoolButtonStyle );
  }
}

void SlotsQToolBar::topLevelChanged ( bool topLevel )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "topLevelChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptopLevel = hb_itemPutL( NULL, topLevel );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptopLevel );
    hb_itemRelease( psender );
    hb_itemRelease( ptopLevel );
  }
}

void SlotsQToolBar::visibilityChanged ( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

HB_FUNC( QTOOLBAR_ONACTIONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "actionTriggered(QAction*)", "actionTriggered(QAction*)" ) );
}

HB_FUNC( QTOOLBAR_ONALLOWEDAREASCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "allowedAreasChanged(Qt::ToolBarAreas)", "allowedAreasChanged(Qt::ToolBarAreas)" ) );
}

HB_FUNC( QTOOLBAR_ONICONSIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "iconSizeChanged(QSize)", "iconSizeChanged(QSize)" ) );
}

HB_FUNC( QTOOLBAR_ONMOVABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "movableChanged(bool)", "movableChanged(bool)" ) );
}

HB_FUNC( QTOOLBAR_ONORIENTATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "orientationChanged(Qt::Orientation)", "orientationChanged(Qt::Orientation)" ) );
}

HB_FUNC( QTOOLBAR_ONTOOLBUTTONSTYLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "toolButtonStyleChanged(Qt::ToolButtonStyle)", "toolButtonStyleChanged(Qt::ToolButtonStyle)" ) );
}

HB_FUNC( QTOOLBAR_ONTOPLEVELCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "topLevelChanged(bool)", "topLevelChanged(bool)" ) );
}

HB_FUNC( QTOOLBAR_ONVISIBILITYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQToolBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "visibilityChanged(bool)", "visibilityChanged(bool)" ) );
}

$endSlotsClass
