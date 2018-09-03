
@testset "Views" begin
    datf = sprand(11,9,0.6)
    datf./=SpatialEcology.colsum(datf)
    com = ComMatrix(datf)

    amphdat = CSV.read(joinpath(dirname(pathof(SpatialEcology)), "..", "data", "amph_Europe.csv"))
    amph = Assemblage(amphdat[4:end], amphdat[1:3], sitecolumns = false)

    vcom = view(com, species = [1,2,3,5,7,8], sites = [2,3,6,8,9])
    comc = copy(vcom)

    @test occupancy(vcom) == occupancy(comc)
    @test richness(vcom) == richness(comc)
    @test nsites(vcom) == nsites(comc)
    @test nspecies(vcom) == nspecies(comc)
    #@test occurring(vcom) == occurring(comc)
    #@test occupied(vcom) == occupied(comc)
    #@test noccurring(vcom) == noccurring(comc)
    #@test noccupied(vcom) == noccupied(comc)
    #@test getspecies(vcom, 4) == getspecies(comc, 4)



end
