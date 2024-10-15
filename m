Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC481FC7C3
	for <keys@linux.kernel.org>; Tue, 15 Oct 2024 13:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728999978; cv=none; b=j1dwU+d7Bs5nNROIrNLE8+caWKEizGDI/LAYDs4NdoVRgLcW0ItJPx5AHsQlC/3mGoLq3oxhl6PCYosHcWF6rUvC4ghFms9SWR78yroRUbwWAbQH+HhnQMDKJqlGaoRzzmML2/4dsg13P3efzt3cV374v7rheUyMBpvqXTQ7aD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728999978; c=relaxed/simple;
	bh=jjlyamQHuK1G8m+stbedBwAlDxqV8hiYmkSlqz1Hp/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dehu5RQoaTI2xYQt2UQv34tzCH0yn8liymtf1DWL5zBNKwNfKG4MfsCVEq4ZQ8qh8XyZGUNGSmBIgerUB8bhp3dfpt6ZLZtMViVt5WU4hZZFtImdeZFSz/6n9FEue59MVvscEitiRbwMWLn5y12xMVo3E6+XMMsr35jFVjaosYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=a+bjPmtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="a+bjPmtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A7F1C4CEC6;
	Tue, 15 Oct 2024 13:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1728999977;
	bh=jjlyamQHuK1G8m+stbedBwAlDxqV8hiYmkSlqz1Hp/o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a+bjPmtJTaVrtRSKK7ZB3vFYWE0Mi8+y4YyFsJla0TSOy5hahHHx4/1KyQBVFhf6R
	 DQv+lyYxT+Nomie/fZYdqbSQlI3MRTbkl322T1N3nHG4Z8ouKAOiKNv/b3c3Vtd86o
	 lQsFdbashEGk/2T2ERkPdQc/PV9e9OH6CdEV05dY=
Date: Tue, 15 Oct 2024 09:46:14 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: Add my key
Message-ID: <20241015-important-moth-of-chivalry-f9bedb@lemur>
References: <nxmur7ve62ocgjit5hs54lck2dktljr6tfg3qvouquhypb645y@k5sw35pi2dbs>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <nxmur7ve62ocgjit5hs54lck2dktljr6tfg3qvouquhypb645y@k5sw35pi2dbs>

On Tue, Oct 15, 2024 at 10:41:22AM GMT, Markus Schneider-Pargmann wrote:
> please add my key to the keyring. It has one signature.

Hello:

It's a valid signature, but unfortunately Uwe's key depth is already 4-deep:

https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/E2DCDD9132669BD6.svg

So, with just his signature your key is too far removed from Linus to make the
web of trust work.

Would you be able to get your key signed by someone else?

-K
