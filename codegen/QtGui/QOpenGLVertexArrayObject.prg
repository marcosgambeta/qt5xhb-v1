$header

#include "hbclass.ch"

CLASS QOpenGLVertexArrayObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectId
   METHOD bind
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLVertexArrayObject(QObject* parent = 0)
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_NEW )
{
  QOpenGLVertexArrayObject * o = new QOpenGLVertexArrayObject ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool create()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_CREATE )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->create () );
  }
}


/*
void destroy()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_DESTROY )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCreated() const
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_ISCREATED )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCreated () );
  }
}


/*
GLuint objectId() const
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_OBJECTID )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->objectId () );
  }
}


/*
void bind()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_BIND )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->bind ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void release()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_RELEASE )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
