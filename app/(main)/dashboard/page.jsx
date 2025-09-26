import { getIndustryInsights } from '@/actions/dashboard';
import { getUserOnboardingStatus } from '@/actions/user';
import { redirect } from 'next/navigation';
import React from 'react'
import Dashboardview from './_components/dashboard-view';

async function IndustryInsightsPage() {
    const {isOnboarded}=await getUserOnboardingStatus();
    if(!isOnboarded)redirect("/onboarding");
    const insights=await getIndustryInsights();
  return (
    <div className="container mx-auto">
      <Dashboardview insights={insights}/></div>
  )
}

export default IndustryInsightsPage