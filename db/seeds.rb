# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


University.create([{ :name => 'Faculte de Medecine de Monastir' },
			{ :name => 'Faculte de Medecine Dentaire de Monastir' },
			{ :name => 'Faculte de Pharmacie de Monastir' },
			{ :name => 'Institut de Sante de Monastir' }])

Annee.create([{ :name => 'PCEM1 Premiere annee', :order => '1', :slug => 'PCEM1', :university_id => '1' },
			{ :name => 'PCEM2 Deuxieme annee', :order => '2', :slug => 'PCEM2', :university_id => '1' },
			{ :name => 'DCEM1 Troisieme annee', :order => '3', :slug => 'DCEM1', :university_id => '1' },
			{ :name => 'DCEM2 Quatrieme annee', :order => '4', :slug => 'DCEM2', :university_id => '1' },
			{ :name => 'PCEM3 Cinquieme annee', :order => '5', :slug => 'PCEM3', :university_id => '1' },

			#Dentaire
			{ :name => 'Premiere annee', :order => '1', :slug => 'D1', :university_id => '2' },
			{ :name => 'Deuxieme annee', :order => '2', :slug => 'D2', :university_id => '2' },
			{ :name => 'Troisieme annee', :order => '3', :slug => 'D3', :university_id => '2' },
			{ :name => 'Quatrieme annee', :order => '4', :slug => 'D4', :university_id => '2' },
			{ :name => 'Cinquieme annee', :order => '5', :slug => 'D5', :university_id => '2' },

			#pharmacie
			{ :name => 'Premiere annee', :order => '1', :slug => 'P1', :university_id => '3' },
			{ :name => 'Deuxieme annee', :order => '2', :slug => 'P2', :university_id => '3' },
			{ :name => 'Troisieme annee', :order => '3', :slug => 'P3', :university_id => '3' },
			{ :name => 'Quatrieme annee', :order => '4', :slug => 'P4', :university_id => '3' },
			{ :name => 'Cinquieme annee', :order => '5', :slug => 'P5', :university_id => '3' }])
