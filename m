Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762531FCFCE
	for <keys@linux.kernel.org>; Tue,  4 Mar 2025 21:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741124374; cv=none; b=XCCQ0gCTUdOwLMRHB/aZOQIQHHg2AwIINEw35TQy2YQ+uyLL6irRgY9+Fm3uP8QYe4ic2QrYH1k+9xwJKjvPQoGMma8VTQVmNn2hewQRyCZCqaaxbNuRXy8WVhmNndjTQrnLx5w/pL3PTRe/Pv2kg1W7hNWzy2sx/goIuDmOY8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741124374; c=relaxed/simple;
	bh=dZPEF6CHvkjY8s0Ey5mP9vDL1Th2AaVul/w86Nb0cEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXynZXJrvYfjAsAuumqKMcqgJwyyc06d8GwOcKaqc+Muxo8CpgIcNne/aA+fQYpwcffBOVXrMhwMjmaM9LqOc/9BcmTUI48lsfeqsKVYFKb7auu2VP0Cu6wm6wqX+fJSaIix+VtTXlo0YtstsPdJGM9d6+0AzH48P2/U2z9oXpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=dtKSbJvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="dtKSbJvF"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C373BC4CEE5;
	Tue,  4 Mar 2025 21:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1741124373;
	bh=dZPEF6CHvkjY8s0Ey5mP9vDL1Th2AaVul/w86Nb0cEQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dtKSbJvFPuSKdj+A2yrm66Pl1kE+8zOT8Bn1g4dyf/WFJjPxo+9gpHZnolh3FC5Y/
	 HJx4IBbcwsWX0cK7O43//p21tWOIORxcuW038jou7L0ihxBvi43dymTNzYcwM0BgrE
	 pteMHCwLhBto2z+3fhjIAGMCeYTHda1QmVjihfpQ=
Date: Tue, 4 Mar 2025 16:39:32 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update CD57E35C5BA20660 (Damien Le Moal)
Message-ID: <20250304-wise-esoteric-guillemot-9aca19@lemur>
References: <34487ecc-384c-471d-a809-724af8dcd6a2@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <34487ecc-384c-471d-a809-724af8dcd6a2@kernel.org>

On Tue, Mar 04, 2025 at 12:52:53PM +0900, Damien Le Moal wrote:
> Konstantin,
> 
> I updated my gpg key (CD57E35C5BA20660) expiration date.
> Here is the updated key export:

Updated, thanks.

-K
