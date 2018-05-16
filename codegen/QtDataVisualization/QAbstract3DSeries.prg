%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

%%   METHOD new
   METHOD delete

   METHOD baseColor
   METHOD baseGradient
   METHOD colorStyle
   METHOD isItemLabelVisible
   METHOD isMeshSmooth
   METHOD isVisible
   METHOD itemLabel
   METHOD itemLabelFormat
   METHOD mesh
   METHOD meshRotation
   METHOD multiHighlightColor
   METHOD multiHighlightGradient
   METHOD name
   METHOD setBaseColor
   METHOD setBaseGradient
   METHOD setColorStyle
   METHOD setItemLabelFormat
   METHOD setItemLabelVisible
   METHOD setMesh
   METHOD setMeshAxisAndAngle
   METHOD setMeshRotation
   METHOD setMeshSmooth
   METHOD setMultiHighlightColor
   METHOD setMultiHighlightGradient
   METHOD setName
   METHOD setSingleHighlightColor
   METHOD setSingleHighlightGradient
   METHOD setUserDefinedMesh
   METHOD setVisible
   METHOD singleHighlightColor
   METHOD singleHighlightGradient
   METHOD type
   METHOD userDefinedMesh

   METHOD onBaseColorChanged
   METHOD onBaseGradientChanged
   METHOD onColorStyleChanged
   METHOD onItemLabelChanged
   METHOD onItemLabelFormatChanged
   METHOD onItemLabelVisibilityChanged
   METHOD onMeshChanged
   METHOD onMeshRotationChanged
   METHOD onMeshSmoothChanged
   METHOD onMultiHighlightColorChanged
   METHOD onMultiHighlightGradientChanged
   METHOD onNameChanged
   METHOD onSingleHighlightColorChanged
   METHOD onSingleHighlightGradientChanged
   METHOD onUserDefinedMeshChanged
   METHOD onVisibilityChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QAbstract3DSeries(QAbstract3DSeriesPrivate *d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAbstract3DSeries()
$deleteMethod

%%
%% Q_PROPERTY(SeriesType type READ type CONSTANT)
%%

$prototype=SeriesType type() const
$method=|QAbstract3DSeries::SeriesType|type|

%%
%% Q_PROPERTY(QString itemLabelFormat READ itemLabelFormat WRITE setItemLabelFormat NOTIFY itemLabelFormatChanged)
%%

$prototype=QString itemLabelFormat() const
$method=|QString|itemLabelFormat|

$prototype=void setItemLabelFormat(const QString &format)
$method=|void|setItemLabelFormat|const QString &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibilityChanged)
%%

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

%%
%% Q_PROPERTY(Mesh mesh READ mesh WRITE setMesh NOTIFY meshChanged)
%%

$prototype=Mesh mesh() const
$method=|QAbstract3DSeries::Mesh|mesh|

$prototype=void setMesh(Mesh mesh)
$method=|void|setMesh|QAbstract3DSeries::Mesh

%%
%% Q_PROPERTY(bool meshSmooth READ isMeshSmooth WRITE setMeshSmooth NOTIFY meshSmoothChanged)
%%

$prototype=bool isMeshSmooth() const
$method=|bool|isMeshSmooth|

$prototype=void setMeshSmooth(bool enable)
$method=|void|setMeshSmooth|bool

%%
%% Q_PROPERTY(QQuaternion meshRotation READ meshRotation WRITE setMeshRotation NOTIFY meshRotationChanged)
%%

$prototype=QQuaternion meshRotation() const
$method=|QQuaternion|meshRotation|

$prototype=void setMeshRotation(const QQuaternion &rotation)
$method=|void|setMeshRotation|const QQuaternion &

%%
%% Q_PROPERTY(QString userDefinedMesh READ userDefinedMesh WRITE setUserDefinedMesh NOTIFY userDefinedMeshChanged)
%%

$prototype=QString userDefinedMesh() const
$method=|QString|userDefinedMesh|

$prototype=void setUserDefinedMesh(const QString &fileName)
$method=|void|setUserDefinedMesh|const QString &

%%
%% Q_PROPERTY(QtDataVisualization::Q3DTheme::ColorStyle colorStyle READ colorStyle WRITE setColorStyle NOTIFY colorStyleChanged)
%%

$prototype=Q3DTheme::ColorStyle colorStyle() const
$method=|Q3DTheme::ColorStyle|colorStyle|

$prototype=void setColorStyle(Q3DTheme::ColorStyle style)
$method=|void|setColorStyle|Q3DTheme::ColorStyle

%%
%% Q_PROPERTY(QColor baseColor READ baseColor WRITE setBaseColor NOTIFY baseColorChanged)
%%

$prototype=QColor baseColor() const
$method=|QColor|baseColor|

$prototype=void setBaseColor(const QColor &color)
$method=|void|setBaseColor|const QColor &

%%
%% Q_PROPERTY(QLinearGradient baseGradient READ baseGradient WRITE setBaseGradient NOTIFY baseGradientChanged)
%%

$prototype=QLinearGradient baseGradient() const
$method=|QLinearGradient|baseGradient|

$prototype=void setBaseGradient(const QLinearGradient &gradient)
$method=|void|setBaseGradient|const QLinearGradient &

%%
%% Q_PROPERTY(QColor singleHighlightColor READ singleHighlightColor WRITE setSingleHighlightColor NOTIFY singleHighlightColorChanged)
%%

$prototype=QColor singleHighlightColor() const
$method=|QColor|singleHighlightColor|

$prototype=void setSingleHighlightColor(const QColor &color)
$method=|void|setSingleHighlightColor|const QColor &

%%
%% Q_PROPERTY(QLinearGradient singleHighlightGradient READ singleHighlightGradient WRITE setSingleHighlightGradient NOTIFY singleHighlightGradientChanged)
%%

$prototype=QLinearGradient singleHighlightGradient() const
$method=|QLinearGradient|singleHighlightGradient|

$prototype=void setSingleHighlightGradient(const QLinearGradient &gradient)
$method=|void|setSingleHighlightGradient|const QLinearGradient &

%%
%% Q_PROPERTY(QColor multiHighlightColor READ multiHighlightColor WRITE setMultiHighlightColor NOTIFY multiHighlightColorChanged)
%%

$prototype=QColor multiHighlightColor() const
$method=|QColor|multiHighlightColor|

$prototype=void setMultiHighlightColor(const QColor &color)
$method=|void|setMultiHighlightColor|const QColor &

%%
%% Q_PROPERTY(QLinearGradient multiHighlightGradient READ multiHighlightGradient WRITE setMultiHighlightGradient NOTIFY multiHighlightGradientChanged)
%%

$prototype=QLinearGradient multiHighlightGradient() const
$method=|QLinearGradient|multiHighlightGradient|

$prototype=void setMultiHighlightGradient(const QLinearGradient &gradient)
$method=|void|setMultiHighlightGradient|const QLinearGradient &

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(QString itemLabel READ itemLabel NOTIFY itemLabelChanged REVISION 1)
%%

$prototype=QString itemLabel() const
$method=|QString|itemLabel|

%%
%% Q_PROPERTY(bool itemLabelVisible READ isItemLabelVisible WRITE setItemLabelVisible NOTIFY itemLabelVisibilityChanged REVISION 1)
%%

$prototype=bool isItemLabelVisible() const
$method=|bool|isItemLabelVisible|

$prototype=void setItemLabelVisible(bool visible)
$method=|void|setItemLabelVisible|bool

%%
%%
%%

$prototype=Q_INVOKABLE void setMeshAxisAndAngle(const QVector3D &axis, float angle)
$method=|void|setMeshAxisAndAngle|const QVector3D &,float

$beginSignals
$signal=|baseColorChanged(QColor)
$signal=|baseGradientChanged(QLinearGradient)
$signal=|colorStyleChanged(Q3DTheme::ColorStyle)
$signal=|itemLabelChanged(QString)
$signal=|itemLabelFormatChanged(QString)
$signal=|itemLabelVisibilityChanged(bool)
$signal=|meshChanged(QAbstract3DSeries::Mesh)
$signal=|meshRotationChanged(QQuaternion)
$signal=|meshSmoothChanged(bool)
$signal=|multiHighlightColorChanged(QColor)
$signal=|multiHighlightGradientChanged(QLinearGradient)
$signal=|nameChanged(QString)
$signal=|singleHighlightColorChanged(QColor)
$signal=|singleHighlightGradientChanged(QLinearGradient)
$signal=|userDefinedMeshChanged(QString)
$signal=|visibilityChanged(bool)
$endSignals

#pragma ENDDUMP
