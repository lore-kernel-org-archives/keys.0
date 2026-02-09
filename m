Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D191E3BB44
	for <keys@linux.kernel.org>; Mon,  9 Feb 2026 18:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770661867; cv=none; b=JgU72ognf4Fl2pdWsjGVls7Fid9gMB6aAdfCjNOnERGvRwsW+wHaZ28zVrHgncykq7TXDH+gqJ6rabLMDiGiqCUpiHfKzFstDwx/HXoqV07IVr2rcvoyVuFzwv/wpfite19oSCVHcWEPHpyHi1eQgu0M3ErzH47qHLwaAMGPt/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770661867; c=relaxed/simple;
	bh=r3QSJVpU90IH/rWtXG4XCIw5M7BVV+kQqwBgF9fMIzI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ntExPk1AT0x5ONobhCT0bGESIMKn28GgApP05fJzOnc/3GfUDuKb7cJs6VR/MI1Cr8O2Dt1oIlVCDOkp8edqx4QAEG7+eVpnEAsdGQIP56UXmkTGmuMc+ewM2W/6opFbrhWux2ryeKE8jeE0XFUXQBFA/ct7cWwIl8a8I/gmDq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDk1W7MO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDk1W7MO"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7454BC116C6;
	Mon,  9 Feb 2026 18:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770661867;
	bh=r3QSJVpU90IH/rWtXG4XCIw5M7BVV+kQqwBgF9fMIzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YDk1W7MO+4KZftaArMCq3cJXtJEBYtFjO81BqiVJITq9z2Rf1Rcu6hCsGzDGLDCN7
	 gRg4Q5LjQOEmVarm2kqsbJZUkBWD7bs2vY4l9qWQcJx/pgn3rGo/pWNKcuLImkmx+r
	 16ZWLhXPCvNkpgXMQjJMmu/zEiPUQveQa41+yRvYCLW0MPnwgdPjKTuaD8tHPeCDuj
	 I7WSbtadFQsy+60YiRYQVcP/pkYawOHA4amT2dna7pRAr8ph2hWvBIvpb5b4gREnnY
	 SwTZOKO+aA/oncmQwRqW1LN7Li0Xi6CEuGfC9+67gRVgCPglpXG/5XTSVaMwJCs95H
	 1sFQJZ4pwoY8g==
Date: Mon, 9 Feb 2026 13:31:06 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=
Message-ID: <20260209-expert-swan-of-protection-7a458f@lemur>
References: <20260206.waiCh9iex3ai@digikod.net>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260206.waiCh9iex3ai@digikod.net>

On Fri, Feb 06, 2026 at 07:29:41PM +0100, Mickaël Salaün wrote:
> Hi,
> 
> Please find attached my updated key with an extended expiration date and
> my mic@kernel.org address.

Looks like this was pulled in with the latest round of keyserver syncs.

Best regards,
-K
