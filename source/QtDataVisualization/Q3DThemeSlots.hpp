//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef Q3DTHEMESLOTS_H
#define Q3DTHEMESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/Q3DTheme>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class Q3DThemeSlots : public QObject
{
  Q_OBJECT
public:
  Q3DThemeSlots(QObject *parent = 0);
  ~Q3DThemeSlots();
public slots:
  void ambientLightStrengthChanged(float strength);
  void backgroundColorChanged(const QColor &color);
  void backgroundEnabledChanged(bool enabled);
  void baseColorsChanged(const QList<QColor> &colors);
  void baseGradientsChanged(const QList<QLinearGradient> &gradients);
  void colorStyleChanged(Q3DTheme::ColorStyle style);
  void fontChanged(const QFont &font);
  void gridEnabledChanged(bool enabled);
  void gridLineColorChanged(const QColor &color);
  void highlightLightStrengthChanged(float strength);
  void labelBackgroundColorChanged(const QColor &color);
  void labelBackgroundEnabledChanged(bool enabled);
  void labelBorderEnabledChanged(bool enabled);
  void labelTextColorChanged(const QColor &color);
  void lightColorChanged(const QColor &color);
  void lightStrengthChanged(float strength);
  void multiHighlightColorChanged(const QColor &color);
  void multiHighlightGradientChanged(const QLinearGradient &gradient);
  void singleHighlightColorChanged(const QColor &color);
  void singleHighlightGradientChanged(const QLinearGradient &gradient);
  void typeChanged(Q3DTheme::Theme themeType);
  void windowColorChanged(const QColor &color);
};

#endif // Q3DTHEMESLOTS_H
