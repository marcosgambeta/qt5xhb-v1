$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
#endif

CLASS QButtonGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttons
   METHOD checkedButton
   METHOD checkedId
   METHOD exclusive
   METHOD id
   METHOD removeButton
   METHOD setExclusive
   METHOD setId

   METHOD onButtonClicked1
   METHOD onButtonClicked2
   METHOD onButtonPressed1
   METHOD onButtonPressed2
   METHOD onButtonReleased1
   METHOD onButtonReleased2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QButtonGroup ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void addButton ( QAbstractButton * button )
*/
$internalMethod=|void|addButton,addButton1|QAbstractButton *

/*
void addButton ( QAbstractButton * button, int id )
*/
$internalMethod=|void|addButton,addButton2|QAbstractButton *,int

//[1]void addButton ( QAbstractButton * button )
//[2]void addButton ( QAbstractButton * button, int id )

HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QButtonGroup_addButton1 ();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QButtonGroup_addButton2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button ( int id ) const
*/
$method=|QAbstractButton *|button|int

/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_BUTTONS )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTBUTTON" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
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
        hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QAbstractButton * checkedButton () const
*/
$method=|QAbstractButton *|checkedButton|

/*
int checkedId () const
*/
$method=|int|checkedId|

/*
bool exclusive () const
*/
$method=|bool|exclusive|

/*
int id ( QAbstractButton * button ) const
*/
$method=|int|id|QAbstractButton *

/*
void removeButton ( QAbstractButton * button )
*/
$method=|void|removeButton|QAbstractButton *

/*
void setExclusive ( bool )
*/
$method=|void|setExclusive|bool

/*
void setId ( QAbstractButton * button, int id )
*/
$method=|void|setId|QAbstractButton *,int

#pragma ENDDUMP
