Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73DB80B
	for <keys@linux.kernel.org>; Wed, 24 Apr 2024 19:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713986771; cv=none; b=XP0Y53UYcsTHF01HYqLzsxGjQK8OiF/I8UcReYSeRI3r6PrmJ1qBFAx9K8a8N/701u/hWFwjlVFHBDrZ6Dgu4Niw+LioDwf4BjO/pnFM2+eHQcjp7b2oTbCIikdq+o26HS+otaC8iIvysqk69M1oF7quqMeKCcX/W4RmQBW2WzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713986771; c=relaxed/simple;
	bh=90UodYyS0Vyk+iOnPQQNjux2KbysYnNSTbQXNVZFmA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j3jnwucCMTmQ697eDm+ygippCS2CAUFfHtWLWt1QP6J7lrzAkyAkolSWOlTSynpqaMrXQjo6qfPteB2erU0NmQUj+1Vqv+g/K8S6/7d+bBgTDj/jQexaNn8Xv5jGWF+eMZI1TQ8eZzDi4Hi+xnilV0D5umF5MQOgYMqiVYvRAf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=EVmj019I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="EVmj019I"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 176B8C113CD;
	Wed, 24 Apr 2024 19:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1713986771;
	bh=90UodYyS0Vyk+iOnPQQNjux2KbysYnNSTbQXNVZFmA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EVmj019In3mcmg1Of/TSC3VHc28xN/4JIq1sx/eIqm89Q2sbkkgM0K9DzWUi3Akj4
	 tVBf9xZmjQ/EkifPm4U3YqJxXyip9GfRX3EumDYAvurKcmzJsH+YzIfmfujEcKf+FX
	 l40dAGIW9deonHozqQ1ZpQSTuDsFnjDhtSs9HAoY=
Date: Wed, 24 Apr 2024 15:26:10 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joel Granados <j.granados@samsung.com>
Cc: keys@linux.kernel.org
Subject: Re: Update Expiration for j.granados@samsung.com's key
Message-ID: <20240424-skinny-serious-pillbug-dfe48a@lemur>
References: <CGME20240424124117eucas1p1a4e14bd9212978d0e122e86e91558d6d@eucas1p1.samsung.com>
 <20240424123517.32mh5a57xx4utrbt@joelS2.panther.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240424123517.32mh5a57xx4utrbt@joelS2.panther.com>

On Wed, Apr 24, 2024 at 02:35:17PM +0200, Joel Granados wrote:
> This is my key with the expiration dates update. I also uploaded it
> using https://keys.openpgp.org/upload/

Updated, thanks!

-K
