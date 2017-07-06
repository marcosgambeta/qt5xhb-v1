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
HB_FUNC_STATIC( QSGGEOMETRY_ALLOCATE )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->allocate ( PINT(1), OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int attributeCount() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_ATTRIBUTECOUNT )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->attributeCount () );
  }
}



/*
GLenum drawingMode() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_DRAWINGMODE )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLENUM( obj->drawingMode () );
  }
}


/*
int indexCount() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_INDEXCOUNT )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->indexCount () );
  }
}








/*
DataPattern indexDataPattern() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_INDEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indexDataPattern () );
  }
}


/*
int indexType() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_INDEXTYPE )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->indexType () );
  }
}


/*
float lineWidth() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_LINEWIDTH )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->lineWidth () );
  }
}


/*
void markIndexDataDirty()
*/
HB_FUNC_STATIC( QSGGEOMETRY_MARKINDEXDATADIRTY )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->markIndexDataDirty ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void markVertexDataDirty()
*/
HB_FUNC_STATIC( QSGGEOMETRY_MARKVERTEXDATADIRTY )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->markVertexDataDirty ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDrawingMode(GLenum mode)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETDRAWINGMODE )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDrawingMode ( PGLENUM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndexDataPattern(DataPattern p)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETINDEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndexDataPattern ( (QSGGeometry::DataPattern) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLineWidth(float width)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETLINEWIDTH )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLineWidth ( PFLOAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVertexDataPattern(DataPattern p)
*/
HB_FUNC_STATIC( QSGGEOMETRY_SETVERTEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVertexDataPattern ( (QSGGeometry::DataPattern) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int sizeOfIndex() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_SIZEOFINDEX )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->sizeOfIndex () );
  }
}


/*
int sizeOfVertex() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_SIZEOFVERTEX )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->sizeOfVertex () );
  }
}


/*
int vertexCount() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_VERTEXCOUNT )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->vertexCount () );
  }
}










/*
DataPattern vertexDataPattern() const
*/
HB_FUNC_STATIC( QSGGEOMETRY_VERTEXDATAPATTERN )
{
  QSGGeometry * obj = (QSGGeometry *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->vertexDataPattern () );
  }
}





/*
static void updateRectGeometry(QSGGeometry * g, const QRectF & rect)
*/
HB_FUNC_STATIC( QSGGEOMETRY_UPDATERECTGEOMETRY )
{
  QSGGeometry * par1 = (QSGGeometry *) _qt5xhb_itemGetPtr(1);
  QSGGeometry::updateRectGeometry ( par1, *PQRECTF(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void updateTexturedRectGeometry(QSGGeometry * g, const QRectF & rect, const QRectF & textureRect)
*/
HB_FUNC_STATIC( QSGGEOMETRY_UPDATETEXTUREDRECTGEOMETRY )
{
  QSGGeometry * par1 = (QSGGeometry *) _qt5xhb_itemGetPtr(1);
  QSGGeometry::updateTexturedRectGeometry ( par1, *PQRECTF(2), *PQRECTF(3) );
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
