using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace SimpleCombat
{
    public class EntryPoint : ZurasBot.Addons.ICombat
    {

        public override string Name
        {
            get { return "Sorcerer"; }
        }

        public override string Author
        {
            get { return "JuJuBoSc"; }
        }

        public override void OnLoad()
        {

        }

        public override void OnUnload()
        {

        }

        public override void Settings()
        {
			MessageBox.Show("No settings required !");
        }

        public override void OnBotStart()
        {
            ZurasBot.Logger.WriteLine("Sorcerer");
        }

        public override void OnBotStop()
        {

        }

        public override void Patrolling()
        {

        }

        public override Boolean Pull(MyTERA.Helpers.ObjectManager.TERAObject Object)
        {
		
			MyTERA.Resources.Structs.TERASkill Fireball = MyTERA.Helpers.SkillsManager.SkillsManager.GetTERASkillByDataName("Fireball");

            if (!Fireball.IsValid)
            {
                ZurasBot.Logger.WriteLine("Sorcerer - Unable to find Fireball !");
                return false;
            }

            if (Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer > 17)
            {
                ZurasBot.Logic.Approach.ApproachTERAObject(Object, 17);
            }

            Object.S1SkeletalMeshController.Position.Camera__Face();
            System.Threading.Thread.Sleep(100);

            ZurasBot.Logic.Skills.CastSkillById(Fireball.Id, 0, false, Object);
		
			return true;
        }

        public override Boolean Combat(MyTERA.Helpers.ObjectManager.TERAObject Object)
        {
		
			MyTERA.Resources.Structs.TERASkill Fireball = MyTERA.Helpers.SkillsManager.SkillsManager.GetTERASkillByDataName("Fireball");
			MyTERA.Resources.Structs.TERASkill MagmaBomb = MyTERA.Helpers.SkillsManager.SkillsManager.GetTERASkillByDataName("Magma Bomb");
			MyTERA.Resources.Structs.TERASkill IceNeedle = MyTERA.Helpers.SkillsManager.SkillsManager.GetTERASkillByDataName("Ice Needle");
			MyTERA.Resources.Structs.TERASkill FlamePillar = MyTERA.Helpers.SkillsManager.SkillsManager.GetTERASkillByDataName("Flame Pillar");
			MyTERA.Resources.Structs.TERASkill ArcanePulse = MyTERA.Helpers.SkillsManager.SkillsManager.GetTERASkillByDataName("Arcane Pulse");
			MyTERA.Resources.Structs.TERASkill FlamingBarrage = MyTERA.Helpers.SkillsManager.SkillsManager.GetTERASkillByDataName("Flaming Barrage");
			
			if (Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer > 17)
            {
                ZurasBot.Logic.Approach.ApproachTERAObject(Object, 17);
            }
			
			if (FlamingBarrage.IsValid &&
                !FlamingBarrage.OnCooldown() &&
                MyTERA.Helpers.LocalPlayer.S1PlayerStatController.ManaPercentage >= 70 &&
                Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer <= 18 &&
				Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer >= 10)
            {

                Object.S1SkeletalMeshController.Position.Camera__Face();
                System.Threading.Thread.Sleep(100);

                ZurasBot.Logic.Skills.CastSkillById(FlamingBarrage.Id, 1000, true, Object);

                return true;

            }
			
			if (MagmaBomb.IsValid &&
                !MagmaBomb.OnCooldown() &&
                MyTERA.Helpers.LocalPlayer.S1PlayerStatController.Mana >= MagmaBomb.GetCostMP() &&
                Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer <= 13 &&
                Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer >= 8)
            {

                Object.S1SkeletalMeshController.Position.Camera__Face();
                System.Threading.Thread.Sleep(100);

                ZurasBot.Logic.Skills.CastSkillById(MagmaBomb.Id, 0, false, Object);

                return true;

            }
			
			if (IceNeedle.IsValid &&
                !IceNeedle.OnCooldown() &&
                MyTERA.Helpers.LocalPlayer.S1PlayerStatController.Mana >= IceNeedle.GetCostMP() &&
                Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer <= 16)
            {

                Object.S1SkeletalMeshController.Position.Camera__Face();
                System.Threading.Thread.Sleep(100);

                ZurasBot.Logic.Skills.CastSkillById(IceNeedle.Id, 0, false, Object);

                return true;

            }
			
			if (FlamePillar.IsValid &&
                !FlamePillar.OnCooldown() &&
                MyTERA.Helpers.LocalPlayer.S1PlayerStatController.Mana >= FlamePillar.GetCostMP() &&
                Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer <= 5)
            {

                Object.S1SkeletalMeshController.Position.Camera__Face();
                System.Threading.Thread.Sleep(100);

                ZurasBot.Logic.Skills.CastSkillById(FlamePillar.Id, 0, false, Object);

                return true;

            }
			
			if (ArcanePulse.IsValid &&
                !ArcanePulse.OnCooldown() &&
                MyTERA.Helpers.LocalPlayer.S1PlayerStatController.Mana >= ArcanePulse.GetCostMP() &&
                Object.S1SkeletalMeshController.Position.TERADistance3DFromPlayer <= 12)
            {

                Object.S1SkeletalMeshController.Position.Camera__Face();
                System.Threading.Thread.Sleep(100);

                ZurasBot.Logic.Skills.CastSkillById(ArcanePulse.Id, 900, false, Object);

                return true;

            }
			
			Object.S1SkeletalMeshController.Position.Camera__Face();
            System.Threading.Thread.Sleep(100);

            ZurasBot.Logic.Skills.CastSkillById(Fireball.Id, 0, false, Object);
		
            return true;
        }

        public override void PostCombat()
        {

        }
		
    }
}
