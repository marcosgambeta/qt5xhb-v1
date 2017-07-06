$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
#endif

CLASS QIconEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD clone
   METHOD iconName
   METHOD key
   METHOD paint
   METHOD pixmap
   METHOD read
   METHOD virtual_hook
   METHOD write

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
virtual QSize actualSize(const QSize & size, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_ACTUALSIZE )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) && ISNUM(2) && ISNUM(3) )
    {
      QSize * ptr = new QSize( obj->actualSize ( *PQSIZE(1), (QIcon::Mode) hb_parni(2), (QIcon::State) hb_parni(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void addFile(const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_ADDFILE )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->addFile ( PQSTRING(1), *PQSIZE(2), (QIcon::Mode) hb_parni(3), (QIcon::State) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void addPixmap(const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_ADDPIXMAP )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) )
    {
      obj->addPixmap ( *PQPIXMAP(1), (QIcon::Mode) hb_parni(2), (QIcon::State) hb_parni(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QList<QSize> availableSizes(QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off) const
*/
HB_FUNC_STATIC( QICONENGINE_AVAILABLESIZES )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) && ISOPTNUM(2) )
    {
      int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
      int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
      QList<QSize> list = obj->availableSizes ( (QIcon::Mode) par1, (QIcon::State) par2 );
      PHB_DYNS pDynSym;
      #ifdef __XHARBOUR__
      pDynSym = hb_dynsymFind( "QSIZE" );
      #else
      pDynSym = hb_dynsymFindName( "QSIZE" );
      #endif
      PHB_ITEM pArray;
      pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          #ifdef __XHARBOUR__
          hb_vmPushSymbol( pDynSym->pSymbol );
          #else
          hb_vmPushDynSym( pDynSym );
          #endif
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QIconEngine * clone() const = 0
*/
HB_FUNC_STATIC( QICONENGINE_CLONE )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIconEngine * ptr = obj->clone ();
    _qt5xhb_createReturnClass ( ptr, "QICONENGINE" );
  }
}

/*
virtual QString iconName() const
*/
HB_FUNC_STATIC( QICONENGINE_ICONNAME )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->iconName () );
  }
}

/*
virtual QString key() const
*/
HB_FUNC_STATIC( QICONENGINE_KEY )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->key () );
  }
}

/*
virtual void paint(QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state) = 0
*/
HB_FUNC_STATIC( QICONENGINE_PAINT )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQRECT(2) && ISNUM(3) && ISNUM(4) )
    {
      obj->paint ( PQPAINTER(1), *PQRECT(2), (QIcon::Mode) hb_parni(3), (QIcon::State) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPixmap pixmap(const QSize & size, QIcon::Mode mode, QIcon::State state)
*/
HB_FUNC_STATIC( QICONENGINE_PIXMAP )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) && ISNUM(2) && ISNUM(3) )
    {
      QPixmap * ptr = new QPixmap( obj->pixmap ( *PQSIZE(1), (QIcon::Mode) hb_parni(2), (QIcon::State) hb_parni(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool read(QDataStream & in)
*/
HB_FUNC_STATIC( QICONENGINE_READ )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->read ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void virtual_hook(int id, void * data)
*/
HB_FUNC_STATIC( QICONENGINE_VIRTUAL_HOOK )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISPOINTER(2) )
    {
      obj->virtual_hook ( PINT(1), (void *) hb_parptr(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool write(QDataStream & out) const
*/
HB_FUNC_STATIC( QICONENGINE_WRITE )
{
  QIconEngine * obj = (QIconEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->write ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
