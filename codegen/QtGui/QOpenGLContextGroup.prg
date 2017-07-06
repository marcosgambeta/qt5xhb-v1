$header

#include "hbclass.ch"

CLASS QOpenGLContextGroup INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD shares
   METHOD currentContextGroup

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QList<QOpenGLContext *> shares() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXTGROUP_SHARES ) // TODO: implementar codigo
{
  QOpenGLContextGroup * obj = (QOpenGLContextGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
static QOpenGLContextGroup *currentContextGroup()
*/
HB_FUNC_STATIC( QOPENGLCONTEXTGROUP_CURRENTCONTEXTGROUP )
{
  QOpenGLContextGroup * ptr = QOpenGLContextGroup::currentContextGroup ();
  _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXTGROUP" );
}



#pragma ENDDUMP
