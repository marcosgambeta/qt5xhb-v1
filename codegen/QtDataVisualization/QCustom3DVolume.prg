%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCustom3DVolume INHERIT QCustom3DItem

   METHOD new
   METHOD delete

   METHOD alphaMultiplier
   METHOD colorTable
   METHOD createTextureData
   METHOD drawSliceFrames
   METHOD drawSlices
   METHOD preserveOpacity
   METHOD renderSlice
   METHOD setAlphaMultiplier
   METHOD setColorTable
   METHOD setDrawSliceFrames
   METHOD setDrawSlices
   METHOD setPreserveOpacity
   METHOD setSliceFrameColor
   METHOD setSliceFrameGaps
   METHOD setSliceFrameThicknesses
   METHOD setSliceFrameWidths
   METHOD setSliceIndexX
   METHOD setSliceIndexY
   METHOD setSliceIndexZ
   METHOD setSliceIndices
   METHOD setSubTextureData
   METHOD setSubTextureData
   METHOD setTextureData
   METHOD setTextureDepth
   METHOD setTextureDimensions
   METHOD setTextureFormat
   METHOD setTextureHeight
   METHOD setTextureWidth
   METHOD setUseHighDefShader
   METHOD sliceFrameColor
   METHOD sliceFrameGaps
   METHOD sliceFrameThicknesses
   METHOD sliceFrameWidths
   METHOD sliceIndexX
   METHOD sliceIndexY
   METHOD sliceIndexZ
   METHOD textureData
   METHOD textureDataWidth
   METHOD textureDepth
   METHOD textureFormat
   METHOD textureHeight
   METHOD textureWidth
   METHOD useHighDefShader

   METHOD onAlphaMultiplierChanged
   METHOD onColorTableChanged
   METHOD onDrawSliceFramesChanged
   METHOD onDrawSlicesChanged
   METHOD onPreserveOpacityChanged
   METHOD onSliceFrameColorChanged
   METHOD onSliceFrameGapsChanged
   METHOD onSliceFrameThicknessesChanged
   METHOD onSliceFrameWidthsChanged
   METHOD onSliceIndexXChanged
   METHOD onSliceIndexYChanged
   METHOD onSliceIndexZChanged
   METHOD onTextureDataChanged
   METHOD onTextureDepthChanged
   METHOD onTextureFormatChanged
   METHOD onTextureHeightChanged
   METHOD onTextureWidthChanged
   METHOD onUseHighDefShaderChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCustom3DVolume(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QCustom3DVolume(const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, int textureWidth, int textureHeight, int textureDepth, QVector<uchar> *textureData, QImage::Format textureFormat, const QVector<QRgb> &colorTable, QObject *parent = Q_NULLPTR)
%% TODO: implementar
%% $internalConstructor=|new2|const QVector3D &,const QVector3D &,const QQuaternion &,int,int,int,QVector<uchar> *,QImage::Format,const QVector<QRgb> &,QObject *=Q_NULLPTR

//[1]explicit QCustom3DVolume(QObject *parent = Q_NULLPTR)
//[2]explicit QCustom3DVolume(const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, int textureWidth, int textureHeight, int textureDepth, QVector<uchar> *textureData, QImage::Format textureFormat, const QVector<QRgb> &colorTable, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCUSTOM3DVOLUME_NEW )
{
  QCustom3DVolume_new1();
}

$prototype=virtual ~QCustom3DVolume()
$deleteMethod

%%
%% Q_PROPERTY(int textureWidth READ textureWidth WRITE setTextureWidth NOTIFY textureWidthChanged)
%%

$prototype=int textureWidth() const
$method=|int|textureWidth|

$prototype=void setTextureWidth(int value)
$method=|void|setTextureWidth|int

%%
%% Q_PROPERTY(int textureHeight READ textureHeight WRITE setTextureHeight NOTIFY textureHeightChanged)
%%

$prototype=int textureHeight() const
$method=|int|textureHeight|

$prototype=void setTextureHeight(int value)
$method=|void|setTextureHeight|int

%%
%% Q_PROPERTY(int textureDepth READ textureDepth WRITE setTextureDepth NOTIFY textureDepthChanged)
%%

$prototype=int textureDepth() const
$method=|int|textureDepth|

$prototype=void setTextureDepth(int value)
$method=|void|setTextureDepth|int

%%
%% Q_PROPERTY(int sliceIndexX READ sliceIndexX WRITE setSliceIndexX NOTIFY sliceIndexXChanged)
%%

$prototype=int sliceIndexX() const
$method=|int|sliceIndexX|

$prototype=void setSliceIndexX(int value)
$method=|void|setSliceIndexX|int

%%
%% Q_PROPERTY(int sliceIndexY READ sliceIndexY WRITE setSliceIndexY NOTIFY sliceIndexYChanged)
%%

$prototype=int sliceIndexY() const
$method=|int|sliceIndexY|

$prototype=void setSliceIndexY(int value)
$method=|void|setSliceIndexY|int

%%
%% Q_PROPERTY(int sliceIndexZ READ sliceIndexZ WRITE setSliceIndexZ NOTIFY sliceIndexZChanged)
%%

$prototype=int sliceIndexZ() const
$method=|int|sliceIndexZ|

$prototype=void setSliceIndexZ(int value)
$method=|void|setSliceIndexZ|int

%%
%% Q_PROPERTY(QVector<QRgb> colorTable READ colorTable WRITE setColorTable NOTIFY colorTableChanged)
%%

$prototype=QVector<QRgb> colorTable() const
$method=|QVector<QRgb>|colorTable|

$prototype=void setColorTable(const QVector<QRgb> &colors)
$method=|void|setColorTable|const QVector<QRgb> &

%%
%% Q_PROPERTY(QVector<uchar> *textureData READ textureData WRITE setTextureData NOTIFY textureDataChanged)
%%

$prototype=QVector<uchar> *textureData() const
$method=|QVector<uchar> *|textureData|

$prototype=void setTextureData(QVector<uchar> *data)
$method=|void|setTextureData|QVector<uchar> *

%%
%% Q_PROPERTY(float alphaMultiplier READ alphaMultiplier WRITE setAlphaMultiplier NOTIFY alphaMultiplierChanged)
%%

$prototype=float alphaMultiplier() const
$method=|float|alphaMultiplier|

$prototype=void setAlphaMultiplier(float mult)
$method=|void|setAlphaMultiplier|float

%%
%% Q_PROPERTY(bool preserveOpacity READ preserveOpacity WRITE setPreserveOpacity NOTIFY preserveOpacityChanged)
%%

$prototype=bool preserveOpacity() const
$method=|bool|preserveOpacity|

$prototype=void setPreserveOpacity(bool enable)
$method=|void|setPreserveOpacity|bool

%%
%% Q_PROPERTY(bool useHighDefShader READ useHighDefShader WRITE setUseHighDefShader NOTIFY useHighDefShaderChanged)
%%

$prototype=bool useHighDefShader() const
$method=|bool|useHighDefShader|

$prototype=void setUseHighDefShader(bool enable)
$method=|void|setUseHighDefShader|bool

%%
%% Q_PROPERTY(bool drawSlices READ drawSlices WRITE setDrawSlices NOTIFY drawSlicesChanged)
%%

$prototype=bool drawSlices() const
$method=|bool|drawSlices|

$prototype=void setDrawSlices(bool enable)
$method=|void|setDrawSlices|bool

%%
%% Q_PROPERTY(bool drawSliceFrames READ drawSliceFrames WRITE setDrawSliceFrames NOTIFY drawSliceFramesChanged)
%%

$prototype=bool drawSliceFrames() const
$method=|bool|drawSliceFrames|

$prototype=void setDrawSliceFrames(bool enable)
$method=|void|setDrawSliceFrames|bool

%%
%% Q_PROPERTY(QColor sliceFrameColor READ sliceFrameColor WRITE setSliceFrameColor NOTIFY sliceFrameColorChanged)
%%

$prototype=QColor sliceFrameColor() const
$method=|QColor|sliceFrameColor|

$prototype=void setSliceFrameColor(const QColor &color)
$method=|void|setSliceFrameColor|const QColor &

%%
%% Q_PROPERTY(QVector3D sliceFrameWidths READ sliceFrameWidths WRITE setSliceFrameWidths NOTIFY sliceFrameWidthsChanged)
%%

$prototype=QVector3D sliceFrameWidths() const
$method=|QVector3D|sliceFrameWidths|

$prototype=void setSliceFrameWidths(const QVector3D &values)
$method=|void|setSliceFrameWidths|const QVector3D &

%%
%% Q_PROPERTY(QVector3D sliceFrameGaps READ sliceFrameGaps WRITE setSliceFrameGaps NOTIFY sliceFrameGapsChanged)
%%

$prototype=QVector3D sliceFrameGaps() const
$method=|QVector3D|sliceFrameGaps|

$prototype=void setSliceFrameGaps(const QVector3D &values)
$method=|void|setSliceFrameGaps|const QVector3D &

%%
%% Q_PROPERTY(QVector3D sliceFrameThicknesses READ sliceFrameThicknesses WRITE setSliceFrameThicknesses NOTIFY sliceFrameThicknessesChanged)
%%

$prototype=QVector3D sliceFrameThicknesses() const
$method=|QVector3D|sliceFrameThicknesses|

$prototype=void setSliceFrameThicknesses(const QVector3D &values)
$method=|void|setSliceFrameThicknesses|const QVector3D &

%%
%%
%%

$prototype=void setTextureDimensions(int width, int height, int depth)
$method=|void|setTextureDimensions|int,int,int

$prototype=int textureDataWidth() const
$method=|int|textureDataWidth|

$prototype=void setSliceIndices(int x, int y, int z)
$method=|void|setSliceIndices|int,int,int

$prototype=QVector<uchar> *createTextureData(const QVector<QImage *> &images)
$method=|QVector<uchar> *|createTextureData|const QVector<QImage *> &

$prototype=void setSubTextureData(Qt::Axis axis, int index, const uchar *data)
$method=|void|setSubTextureData|Qt::Axis,int,const uchar *

$prototype=void setSubTextureData(Qt::Axis axis, int index, const QImage &image)
$method=|void|setSubTextureData|Qt::Axis,int,const QImage &

$prototype=void setTextureFormat(QImage::Format format)
$method=|void|setTextureFormat|QImage::Format

$prototype=QImage::Format textureFormat() const
$method=|QImage::Format|textureFormat|

$prototype=QImage renderSlice(Qt::Axis axis, int index)
$method=|QImage|renderSlice|Qt::Axis,int

#pragma ENDDUMP
