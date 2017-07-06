$header

#include "hbclass.ch"

CLASS QPdfWriter INHERIT QObject,QPagedPaintDevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QPdfWriter(const QString & filename)
*/
HB_FUNC_STATIC( QPDFWRITER_NEW1 )
{
  QPdfWriter * o = new QPdfWriter ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QPdfWriter(QIODevice * device)
*/
HB_FUNC_STATIC( QPDFWRITER_NEW2 )
{
  QPdfWriter * o = new QPdfWriter ( PQIODEVICE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]explicit QPdfWriter(const QString & filename)
//[2]explicit QPdfWriter(QIODevice * device)

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPDFWRITER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QPDFWRITER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString title() const
*/
HB_FUNC_STATIC( QPDFWRITER_TITLE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}

/*
void setTitle(const QString & title)
*/
HB_FUNC_STATIC( QPDFWRITER_SETTITLE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString creator() const
*/
HB_FUNC_STATIC( QPDFWRITER_CREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->creator () );
  }
}

/*
void setCreator(const QString & creator)
*/
HB_FUNC_STATIC( QPDFWRITER_SETCREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCreator ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool newPage()
*/
HB_FUNC_STATIC( QPDFWRITER_NEWPAGE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->newPage () );
  }
}


/*
void setPageSize(PageSize size)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZE )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPageSize ( (QPagedPaintDevice::PageSize) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageSizeMM(const QSizeF & size)
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZEMM )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPageSizeMM ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
int resolution() const
*/
HB_FUNC_STATIC( QPDFWRITER_RESOLUTION )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->resolution () );
  }
}

/*
void setResolution(int resolution)
*/
HB_FUNC_STATIC( QPDFWRITER_SETRESOLUTION )
{
  QPdfWriter * obj = (QPdfWriter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
