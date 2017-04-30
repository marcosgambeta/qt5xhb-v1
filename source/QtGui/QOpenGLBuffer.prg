/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QOpenGLBuffer INHERIT QObject

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD allocate1
   METHOD allocate2
   METHOD allocate
   METHOD bind
   METHOD bufferId
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD map
   METHOD read
   METHOD release1
   METHOD release2
   METHOD release
   METHOD setUsagePattern
   METHOD size
   METHOD type
   METHOD unmap
   METHOD usagePattern
   METHOD write

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLBuffer>
#endif

/*
QOpenGLBuffer()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_NEW1 )
{
  QOpenGLBuffer * o = new QOpenGLBuffer (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QOpenGLBuffer(QOpenGLBuffer::Type type)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_NEW2 )
{
  int par1 = hb_parni(1);
  QOpenGLBuffer * o = new QOpenGLBuffer (  (QOpenGLBuffer::Type) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QOpenGLBuffer(const QOpenGLBuffer & other)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_NEW3 )
{
  QOpenGLBuffer * par1 = (QOpenGLBuffer *) _qt5xhb_itemGetPtr(1);
  QOpenGLBuffer * o = new QOpenGLBuffer ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QOpenGLBuffer()
//[2]QOpenGLBuffer(QOpenGLBuffer::Type type)
//[3]QOpenGLBuffer(const QOpenGLBuffer & other)

HB_FUNC_STATIC( QOPENGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLBUFFER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLBUFFER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQOPENGLBUFFER(1) )
  {
    HB_FUNC_EXEC( QOPENGLBUFFER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLBUFFER_DELETE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void allocate(const void * data, int count)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_ALLOCATE1 )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const void * par1 = (const void *) hb_parptr(1);
    obj->allocate ( par1, PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void allocate(int count)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_ALLOCATE2 )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->allocate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void allocate(const void * data, int count)
//[2]void allocate(int count)

HB_FUNC_STATIC( QOPENGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLBUFFER_ALLOCATE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLBUFFER_ALLOCATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool bind()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_BIND )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bind (  ) );
  }
}


/*
GLuint bufferId() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_BUFFERID )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferId (  ) );
  }
}


/*
bool create()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_CREATE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->create (  ) );
  }
}


/*
void destroy()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_DESTROY )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCreated() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_ISCREATED )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCreated (  ) );
  }
}


/*
void * map(QOpenGLBuffer::Access access)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_MAP )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retptr( (void *) obj->map (  (QOpenGLBuffer::Access) par1 ) );
  }
}


/*
bool read(int offset, void * data, int count)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_READ )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par2 = (void *) hb_parptr(2);
    hb_retl( obj->read ( PINT(1), par2, PINT(3) ) );
  }
}


/*
void release()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_RELEASE1 )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void release(QOpenGLBuffer::Type type)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_RELEASE2 )
{
  int par1 = hb_parni(1);
  QOpenGLBuffer::release (  (QOpenGLBuffer::Type) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void release()
//[2]void release(QOpenGLBuffer::Type type)

HB_FUNC_STATIC( QOPENGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLBUFFER_RELEASE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLBUFFER_RELEASE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUsagePattern(QOpenGLBuffer::UsagePattern value)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_SETUSAGEPATTERN )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setUsagePattern (  (QOpenGLBuffer::UsagePattern) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int size() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_SIZE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QOpenGLBuffer::Type type() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_TYPE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
bool unmap()
*/
HB_FUNC_STATIC( QOPENGLBUFFER_UNMAP )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unmap (  ) );
  }
}


/*
QOpenGLBuffer::UsagePattern usagePattern() const
*/
HB_FUNC_STATIC( QOPENGLBUFFER_USAGEPATTERN )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->usagePattern (  ) );
  }
}


/*
void write(int offset, const void * data, int count)
*/
HB_FUNC_STATIC( QOPENGLBUFFER_WRITE )
{
  QOpenGLBuffer * obj = (QOpenGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const void * par2 = (const void *) hb_parptr(2);
    obj->write ( PINT(1), par2, PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
