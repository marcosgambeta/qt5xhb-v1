$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QWinJumpListItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD setType
   METHOD filePath
   METHOD setFilePath
   METHOD workingDirectory
   METHOD setWorkingDirectory
   METHOD icon
   METHOD setIcon
   METHOD title
   METHOD setTitle
   METHOD description
   METHOD setDescription
   METHOD arguments
   METHOD setArguments

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinJumpListItem(Type type)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * o = new QWinJumpListItem ( (QWinJumpListItem::Type) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

/*
Type type() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}

/*
void setType(Type type)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setType ( (QWinJumpListItem::Type) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString filePath() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_FILEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->filePath () );
  }
#endif
}

/*
void setFilePath(const QString &filePath)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETFILEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFilePath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString workingDirectory() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_WORKINGDIRECTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->workingDirectory () );
  }
#endif
}

/*
void setWorkingDirectory(const QString &workingDirectory)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETWORKINGDIRECTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWorkingDirectory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIcon icon() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
#endif
}

/*
void setIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
#endif
}

/*
void setTitle(const QString &title)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString description() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->description () );
  }
#endif
}

/*
void setDescription(const QString &description)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDescription ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QStringList arguments() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_ARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->arguments () );
  }
#endif
}

/*
void setArguments(const QStringList &arguments)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setArguments ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
