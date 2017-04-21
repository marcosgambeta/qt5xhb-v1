/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTITEM
#endif

CLASS QWinJumpListCategory

   DATA pointer
   DATA class_id INIT Class_Id_QWinJumpListCategory
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD isVisible
   METHOD setVisible
   METHOD title
   METHOD setTitle
   METHOD count
   METHOD isEmpty
   METHOD items
   METHOD addItem
   METHOD addDestination
   METHOD addLink1
   METHOD addLink2
   METHOD addLink
   METHOD addSeparator
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinJumpListCategory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinJumpListCategory>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinJumpListCategory>
#endif
#endif

/*
explicit QWinJumpListCategory(const QString &title = QString())
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  QWinJumpListCategory * o = new QWinJumpListCategory ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
Type type() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
#endif
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
#endif
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
#endif
}


/*
void setTitle(const QString &title)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int count() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
#endif
}


/*
QList<QWinJumpListItem *> items() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinJumpListItem *> list = obj->items (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWINJUMPLISTITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWINJUMPLISTITEM" );
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
        hb_itemPutPtr( pItem, (QWinJumpListItem *) list[i] );
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
void addItem(QWinJumpListItem *item)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListItem * par1 = (QWinJumpListItem *) _qt5xhb_itemGetPtr(1);
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWinJumpListItem *addDestination(const QString &filePath)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDDESTINATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QWinJumpListItem * ptr = obj->addDestination ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}


/*
QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QStringList par3 = _qt5xhb_convert_array_parameter_to_qstringlist(3);
    //PHB_ITEM aStrings3 = hb_param(3, HB_IT_ARRAY);
    //int i3;
    //int nLen3 = hb_arrayLen(aStrings3);
    //for (i3=0;i3<nLen3;i3++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings3, i3+1) );
    //  par3 << temp;
    //}
    QWinJumpListItem * ptr = obj->addLink ( par1, par2, par3 );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}

/*
QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QStringList par4 = _qt5xhb_convert_array_parameter_to_qstringlist(4);
    //PHB_ITEM aStrings4 = hb_param(4, HB_IT_ARRAY);
    //int i4;
    //int nLen4 = hb_arrayLen(aStrings4);
    //for (i4=0;i4<nLen4;i4++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings4, i4+1) );
    //  par4 << temp;
    //}
    QWinJumpListItem * ptr = obj->addLink ( par1, par2, par3, par4 );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}


//[1]QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
//[2]QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTARRAY(3) )
  {
    HB_FUNC_EXEC( QWINJUMPLISTCATEGORY_ADDLINK1 );
  }
  else if( ISBETWEEN(3,4) && ISQICON(1) && ISCHAR(2) && ISCHAR(3) && ISOPTARRAY(4) )
  {
    HB_FUNC_EXEC( QWINJUMPLISTCATEGORY_ADDLINK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWinJumpListItem *addSeparator()
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDSEPARATOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListItem * ptr = obj->addSeparator (  );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWINJUMPLISTCATEGORY_NEWFROM );
}

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWINJUMPLISTCATEGORY_NEWFROM );
}

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
