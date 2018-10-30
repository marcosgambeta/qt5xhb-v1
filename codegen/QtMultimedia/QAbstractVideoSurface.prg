%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

%%   METHOD onActiveChanged
%%   METHOD onNativeResolutionChanged
%%   METHOD onSupportedFormatsChanged
%%   METHOD onSurfaceFormatChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVideoSurfaceFormat>

$prototype=explicit QAbstractVideoSurface(QObject *parent = Q_NULLPTR)

$prototype=~QAbstractVideoSurface()
$deleteMethod

%%
%% Q_PROPERTY(QSize nativeResolution READ nativeResolution NOTIFY nativeResolutionChanged)
%%

$prototype=QSize nativeResolution() const
$method=|QSize|nativeResolution|

%%
%%
%%

$prototype=Error error () const
$method=|QAbstractVideoSurface::Error|error|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|bool|isFormatSupported|const QVideoSurfaceFormat &

$prototype=virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|QVideoSurfaceFormat|nearestFormat|const QVideoSurfaceFormat &

$prototype=virtual bool present ( const QVideoFrame & frame ) = 0
$virtualMethod=|bool|present|const QVideoFrame &

$prototype=virtual bool start ( const QVideoSurfaceFormat & format )
$virtualMethod=|bool|start|const QVideoSurfaceFormat &

$prototype=virtual void stop ()
$virtualMethod=|void|stop|

$prototype=QVideoSurfaceFormat surfaceFormat () const
$method=|QVideoSurfaceFormat|surfaceFormat|

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats( QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle) const = 0
%% TODO: is pure virtual ?

$prototype=void setError(Error error) [protected]

$prototype=void setNativeResolution(const QSize &resolution) [protected]

#pragma ENDDUMP

%% Q_SIGNALS:
%% void activeChanged(bool active);
%% void surfaceFormatChanged(const QVideoSurfaceFormat &format);
%% void supportedFormatsChanged();
%% void nativeResolutionChanged(const QSize &);
