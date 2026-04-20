using Xunit;

namespace MyApp.Tests;

public class BasicTests
{
    [Fact]
    public void OnePlusOne_IsTwo()
    {
        Assert.Equal(2, 1 + 1);
    }
}
