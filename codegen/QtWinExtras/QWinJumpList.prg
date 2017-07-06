$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTCATEGORY
#endif

CLASS QWinJumpList INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD recent
   METHOD frequent
   METHOD tasks
   METHOD categories
   METHOD addCategory1
   METHOD addCategory2
   METHOD addCategory
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinJumpList(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINJUMPLIST_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * o = new QWinJumpList ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

/*
QString identifier() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->identifier () );
  }
#endif
}

/*
void setIdentifier(const QString &identifier)
*/
HB_FUNC_STATIC( QWINJUMPLIST_SETIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIdentifier ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWinJumpListCategory *recent() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_RECENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * ptr = obj->recent ();
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


/*
QWinJumpListCategory *frequent() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_FREQUENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * ptr = obj->frequent ();
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


/*
QWinJumpListCategory *tasks() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_TASKS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * ptr = obj->tasks ();
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


/*
QList<QWinJumpListCategory *> categories() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinJumpListCategory *> list = obj->categories ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWINJUMPLISTCATEGORY" );
    #else
    pDynSym = hb_dynsymFindName( "QWINJUMPLISTCATEGORY" );
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
        hb_itemPutPtr( pItem, (QWinJumpListCategory *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
void addCategory(QWinJumpListCategory *category)
*/
HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * par1 = (QWinJumpListCategory *) _qt5xhb_itemGetPtr(1);
    obj->addCategory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())
*/
HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinJumpListItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QWinJumpListItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QWinJumpListCategory * ptr = obj->addCategory ( PQSTRING(1), par2 );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


//[1]void addCategory(QWinJumpListCategory *category)
//[2]QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())

HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY )
{
  if( ISNUMPAR(1) && ISQWINJUMPLISTCATEGORY(1) )
  {
    HB_FUNC_EXEC( QWINJUMPLIST_ADDCATEGORY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISOPTARRAY(2) )
  {
    HB_FUNC_EXEC( QWINJUMPLIST_ADDCATEGORY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

}

/*
void clear()
*/
HB_FUNC_STATIC( QWINJUMPLIST_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
