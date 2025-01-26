```ada
function Check_Range (Value : Integer) return Boolean is
begin
  if Value >= 10 and Value <= 20 then
    return True;
  else
    return False;
  end if;
end Check_Range;

procedure Example is
  Result : Boolean;
begin
  Result := Check_Range(15);  -- Correct: within range
  Put_Line("Result 1: " & Boolean'Image(Result));

  Result := Check_Range(5);   -- Correct: outside range
  Put_Line("Result 2: " & Boolean'Image(Result));

  Result := Check_Range(25);  -- Correct: outside range
  Put_Line("Result 3: " & Boolean'Image(Result));

  -- Solution: Explicit type conversion
  Result := Check_Range(Integer(20.5));  -- Correct after conversion
  Put_Line("Result 4: " & Boolean'Image(Result));
end Example;
```