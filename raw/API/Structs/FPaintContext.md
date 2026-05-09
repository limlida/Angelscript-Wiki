### FPaintContext


The state passed into OnPaint that we can expose as a single painting structure to blueprints to
allow script code to override OnPaint behavior.

**方法**:

- `FGeometry GetAllottedGeometry() const`
- `FLinearColor GetStyleColor(FName Color) const`
- `FSlateBrush GetStyleBrush(FName Brush) const`
- `FSlateFontInfo GetStyleFont(int Size) const`
- `DrawBox(FVector2D Position, FVector2D Size, FLinearColor Color)`
- `DrawBox(FVector2D Position, FVector2D Size, FName BrushName, FLinearColor TintColor = FLinearColor :: White)`
- `DrawBox(FVector2D Position, FVector2D Size, FSlateBrush Brush, FLinearColor TintColor = FLinearColor :: White)`
- `DrawBox(FGeometry Geometry, FSlateBrush Brush, FLinearColor TintColor = FLinearColor :: White)`
- `DrawBox(FVector2D Position, FVector2D Size, USlateBrushAsset Brush, FLinearColor TintColor = FLinearColor :: White)`
- `DrawRotatedBox(FVector2D Position, FVector2D Size, float32 Angle, FSlateBrush Brush, FLinearColor TintColor = FLinearColor :: White)`
- `DrawLine(FVector2D PositionA, FVector2D PositionB, FLinearColor Color, float32 Thickness = 1.f, bool bAntiAlias = true)`
- `DrawLines(TArray<FVector2D> Points, FLinearColor Color, float32 Thickness = 1.f, bool bAntiAlias = true)`
- `DrawText(FString Text, FVector2D Position, FLinearColor Color)`
- `DrawText(FSlateFontInfo Font, FString Text, FVector2D Position, FLinearColor Color)`
- `FPaintContext& opAssign(FPaintContext Other)`

---

