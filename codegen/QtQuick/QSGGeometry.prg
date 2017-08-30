$header

#include "hbclass.ch"

CLASS QSGGeometry

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD allocate
   METHOD attributeCount
   METHOD drawingMode
   METHOD indexCount
   METHOD indexDataPattern
   METHOD indexType
   METHOD lineWidth
   METHOD markIndexDataDirty
   METHOD markVertexDataDirty
   METHOD setDrawingMode
   METHOD setIndexDataPattern
   METHOD setLineWidth
   METHOD setVertexDataPattern
   METHOD sizeOfIndex
   METHOD sizeOfVertex
   METHOD vertexCount
   METHOD vertexDataPattern
   METHOD updateRectGeometry
   METHOD updateTexturedRectGeometry

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void allocate(int vertexCount, int indexCount = 0)
*/
$method=|void|allocate|int,int=0

/*
int attributeCount() const
*/
$method=|int|attributeCount|

/*
GLenum drawingMode() const
*/
$method=|GLenum|drawingMode|

/*
int indexCount() const
*/
$method=|int|indexCount|

/*
DataPattern indexDataPattern() const
*/
$method=|QSGGeometry::DataPattern|indexDataPattern|

/*
int indexType() const
*/
$method=|int|indexType|

/*
float lineWidth() const
*/
$method=|float|lineWidth|

/*
void markIndexDataDirty()
*/
$method=|void|markIndexDataDirty|

/*
void markVertexDataDirty()
*/
$method=|void|markVertexDataDirty|

/*
void setDrawingMode(GLenum mode)
*/
$method=|void|setDrawingMode|GLenum

/*
void setIndexDataPattern(DataPattern p)
*/
$method=|void|setIndexDataPattern|QSGGeometry::DataPattern

/*
void setLineWidth(float width)
*/
$method=|void|setLineWidth|float

/*
void setVertexDataPattern(DataPattern p)
*/
$method=|void|setVertexDataPattern|QSGGeometry::DataPattern

/*
int sizeOfIndex() const
*/
$method=|int|sizeOfIndex|

/*
int sizeOfVertex() const
*/
$method=|int|sizeOfVertex|

/*
int vertexCount() const
*/
$method=|int|vertexCount|

/*
DataPattern vertexDataPattern() const
*/
$method=|QSGGeometry::DataPattern|vertexDataPattern|

/*
static void updateRectGeometry(QSGGeometry * g, const QRectF & rect)
*/
$staticMethod=|void|updateRectGeometry|QSGGeometry *,const QRectF &

/*
static void updateTexturedRectGeometry(QSGGeometry * g, const QRectF & rect, const QRectF & textureRect)
*/
$staticMethod=|void|updateTexturedRectGeometry|QSGGeometry *,const QRectF &,const QRectF &

$extraMethods

#pragma ENDDUMP
