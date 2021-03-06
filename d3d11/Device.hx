package d3d11;

import d3d11.resources.*;
import d3d11.InputElementDescription;
import com.IUnknown;
import cpp.Star;

typedef Device = Star<DeviceRef>;

@:unreflective
@:structAccess
@:native("ID3D11Device")
@:include("d3d11.h")
private extern class DeviceRef extends IUnknownRef
{
    inline function createInputLayout(_description : InputElementDescriptionArray, _shaderBytecode : Star<cpp.Void>, _bytecodeLength : Int, _inputLayout : Star<InputLayout>) : Int
    {
        return untyped __cpp__('{0}->CreateInputLayout({1}.data(), {1}.size(), {2}, {3}, (ID3D11InputLayout**){4})', this, _description, _shaderBytecode, _bytecodeLength, _inputLayout);
    }

    @:native('CreateTexture2D')
    function createTexture2D(_description : Star<Texture2DDescription>, _initialData : Star<SubResourceData>, _texture2D : Star<Texture2D>) : Int;

    @:native('CreateBuffer')
    function createBuffer(_description : Star<BufferDescription>, _initialData : Star<SubResourceData>, _buffer : Star<Buffer>) : Int;

    @:native('CreateRenderTargetView')
    function createRenderTargetView(_resource : Resource, _description : Star<RenderTargetViewDescription>, _view : Star<RenderTargetView>) : Int;

    @:native('CreateShaderResourceView')
    function createShaderResourceView(_resource : Resource, _description : Star<ShaderResourceViewDescription>, _view : Star<ShaderResourceView>) : Int;

    @:native('CreateVertexShader')
    function createVertexShader(_shaderBytecode : Star<cpp.Void>, _bytecodeLength : Int, _classLinkage : ClassLinkage, _vertexShader : Star<VertexShader>) : Int;

    @:native('CreatePixelShader')
    function createPixelShader(_shaderBytecode : Star<cpp.Void>, _bytecodeLength : Int, _classLinkage : ClassLinkage, _pixelShader : Star<PixelShader>) : Int;

    @:native('CreateRasterizerState')
    function createRasterizerState(_description : Star<RasterizerDescription>, _state : Star<RasterizerState>) : Int;

    @:native('CreateBlendState')
    function createBlendState(_blendStateDescription : Star<BlendDescription>, _blendState : Star<BlendState>) : Int;

    @:native('CreateSamplerState')
    function createSamplerState(_samplerDescription : Star<SamplerDescription>, _samplerState : Star<SamplerState>) : Int;
}
